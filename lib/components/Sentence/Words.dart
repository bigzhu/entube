import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../Settings/provider.dart';
import '../word/word.dart';
import './Seek.dart';
import './sentence_trans.dart';
import 'SentenceModel.dart';

class Words extends ConsumerWidget {
  const Words({Key? key, required this.sentence, required this.isPlaying})
      : super(key: key);
  final SentenceModel sentence;
  final bool isPlaying;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<WidgetSpan> words = [];

    for (int i = 0; i < sentence.words.length; i++) {
      WidgetSpan wordSpan;
      if (i == 0) {
        wordSpan = WidgetSpan(child: Word(sentence.words[i]));
      } else {
        wordSpan = WidgetSpan(
            child: Word(sentence.words[i], lastWord: sentence.words[i - 1]));
      }
      words.add(wordSpan);
    }

    if (sentence.seekTo != '') {
      Widget seek = Seek(time: sentence.seekTo, isPlaying: false);
      WidgetSpan seekSpan = WidgetSpan(child: seek);
      words = [seekSpan, ...words];
    } else {
      // 没有 seek, 加点空白排版格式
      WidgetSpan blankSpan =
          WidgetSpan(child: RichText(text: const TextSpan(text: '       ')));

      words = [blankSpan, ...words];
    }

    if (ref.watch(switchSettingsNotifierProvider
        .select((value) => value[IS_SHOW_SENTENCE_TRANS] ?? false))) {
      //add word trans
      Widget sentenceTrans = SentenceTrans(sentence);
      WidgetSpan sentenceSpan = WidgetSpan(child: sentenceTrans);
      words = [...words, sentenceSpan];
    }

    return RichText(text: TextSpan(text: '', children: words));
  }
}
