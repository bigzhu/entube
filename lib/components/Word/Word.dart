import 'package:audioplayers/audioplayers.dart' as audio;
import 'package:entube/components/AcquiringWords/index.dart';
import 'package:entube/components/Error/state.dart';
import 'package:entube/components/Settings/index.dart';
import 'package:entube/themes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:leancloud_storage/leancloud.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state.dart';

// no need learn and no need add blank
final List<String> noNeedBlank = [
  "n't",
  "n’t",
  ".",
  "?",
  "'ll",
  "'s",
  "'re",
  "'m",
  "'d",
  "'ve",
  "n't",
  ".",
  "!",
  ",",
  ":",
  "…",
  "%",
];
final RegExp regHasLetter = RegExp(r"[a-zA-Z]{1}");
final RegExp regNumber = RegExp(r'^[0-9]+$');

// one word one richtext make low performance
class Word extends StatefulHookConsumerWidget {
  const Word(this.word, {Key? key, this.lastWord}) : super(key: key);

  final String word;
  final String? lastWord;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StateWord();
}

class _StateWord extends ConsumerState<Word> {
  late String word;
  late String lastWord;
  String? transWord; //可能的需要翻译的单词

  bool tapping = false;
  bool underline = false;
  bool isFinding = false; //暂时没用

  final _audioPlayer = audio.AudioPlayer();
  @override
  void initState() {
    super.initState();
    word = widget.word;
    lastWord = widget.lastWord ?? '';
  }

  upsertAcquiringWord(
    String word,
    bool done,
  ) async {
    try {
      final acquiringWordsSNPN = ref.read(acquiringWordsSNP.notifier);
      if (done) {
        await acquiringWordsSNPN.remove(word);
      }
      if (done == false) {
        await acquiringWordsSNPN.add(word);
      }
    } on Exception catch (e) {
      ref.watch(errorMeesageStateProvider.notifier).state = e.toString();
    }
  }

// 定义各种 tap 后的处理
// isNoNeed 是不需要学习的
  MultiTapGestureRecognizer getTapRecognizer() {
    // 标记是否长按, 长按不要触发单词查询
    bool longTap = false;
    return MultiTapGestureRecognizer()
      ..longTapDelay = const Duration(milliseconds: 300)
      ..onLongTapDown = (i, detail) async {
        //不是字母, 不用点击
        if (!regHasLetter.hasMatch(word)) return;
        longTap = true;
        setTapStyle(true);
        if (isDone()) {
          await upsertAcquiringWord(word, false);
        } else {
          await upsertAcquiringWord(word, true);
        }
        setTapStyle(false);
      }
      ..onTap = (i) async {
        if (longTap) return;
        //没有连续字母, 不可点击
        if (!regHasLetter.hasMatch(word)) return;
        if (word.startsWith("'") || word.startsWith('’')) return;
        //https://ssl.gstatic.com/dictionary/static/sounds/oxford/big--_gb_1.mp3
        //https://ssl.gstatic.com/dictionary/static/sounds/oxford/big--_us_1.mp3
        setTapStyle(true);
        //播放 youtube时候不能发音， 否则 iOS 下 youtube 音频会不正常
        if (ref.watch(switchSettingsNotifierProvider
            .select((value) => value[IS_SPEECH_WORD] ?? false))) {
          _audioPlayer.play(
              audio.UrlSource(
                  "https://ssl.gstatic.com/dictionary/static/sounds/oxford/${word.toLowerCase()}--_us_1.mp3"),
              mode: audio.PlayerMode.lowLatency);
        }
        // 避免长按的同时触发
        await upsertAcquiringWord(word, false);
        if (ref.watch(switchSettingsNotifierProvider
            .select((value) => value[IS_COPY_TO_CLIPBOARD] ?? false))) {
          Clipboard.setData(ClipboardData(text: word));
        }
        setTapStyle(false);
      };
  }

  //让点击的响应加快
  setTapStyle(bool b) {
    setState(() {
      tapping = b;
      underline = b;
    });
    //先行消除 underline
    if (b) {
      Future.delayed(const Duration(milliseconds: 800), () {
        setState(() {
          underline = false;
        });
      });
    }
  }

  bool isDone() {
    final acquiringWord =
        ref.watch(acquiringWordsSNP.select((value) => value[word]));
    if (acquiringWord == null) return true;
    if (acquiringWord.is_done == true) return true;
    return false;
  }

  // 定义应该的 style
  TextStyle defineStyle() {
    TextStyle wordTextStyle = articleTextStyle;
    if (!isDone() || tapping) {
      // 是否3000常用
      wordTextStyle = wordTextStyle.merge(articleAcquiringCommonTextStyle);
      /*
      if (word.level > 0) {
        wordTextStyle = wordTextStyle.merge(articleAcquiringCommonTextStyle);
      } else {
        wordTextStyle = wordTextStyle.merge(articleAcquiringUncommonTextStyle);
      }
       */
    }

    if (underline) {
      wordTextStyle = wordTextStyle.merge(articleTappingTextStyle);
    }
    if (isFinding) {
      wordTextStyle = wordTextStyle.merge(articleFindingTextStyle);
    }
    return wordTextStyle;
  }

  @override
  Widget build(BuildContext context) {
    if (!isDone()) {
      setState(() {
        transWord = ref.watch(wordTransStateNotifierProvider(word));
      });
    } else {
      setState(() {
        transWord = null;
      });
    }

    TextSpan subWord = const TextSpan(text: '');
    //如果是获取中的单词, 显示翻译
    if (transWord != null) {
      subWord = TextSpan(
        text: " $transWord",
        style: defineStyle().copyWith(fontSize: 10),
        recognizer: getTapRecognizer(),
      );
    }

    TextSpan textSpan = TextSpan(
        text: word,
        style: defineStyle(),
        recognizer: getTapRecognizer(),
        children: [subWord]);

    if (!noNeedBlank.contains(word.toLowerCase())) {
      textSpan = TextSpan(text: ' ', children: [textSpan]);
    }
    /*
    if (!noNeedBlank.contains(word.toLowerCase()) &&
        regHasLetter.hasMatch(word) &&
        !word.startsWith("'") &&
        !word.startsWith('’') &&
        !['"', '“', '('].contains(lastWord)) {
      textSpan = TextSpan(text: ' ', children: [textSpan]);
    }

    if ((['"', '“', "("].contains(word) && regHasLetter.hasMatch(lastWord)) ||
        regNumber.hasMatch(word)) {
      textSpan = TextSpan(text: ' ', children: [textSpan]);
    }
    */

    return RichText(text: textSpan);
  }

  /*
  @override
  void dispose() {
    super.dispose();
    ref.read(acquiringWordsStateNotifierProvider.notifier).saveToLocal();
  }
  */
}
