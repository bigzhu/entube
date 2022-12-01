import 'package:AcquireEnglish/components/AcquiringWords/index.dart';
import 'package:AcquireEnglish/components/Youtube/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:language_picker/languages.dart';
import 'package:language_picker/languages.dart';
import 'package:translator/translator.dart';
import 'package:translator/translator.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import './sentence_model.dart';
import '../../themes.dart';
import '../../themes.dart';
import '../../utils/compute.dart';
import '../Settings/provider.dart';

class SentenceTrans extends StatefulHookConsumerWidget {
  const SentenceTrans(this.sentence, {Key? key}) : super(key: key);

  final SentenceModel sentence;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SentenceTransState();
}

class _SentenceTransState extends ConsumerState<SentenceTrans> {
  bool showTrans = false;
  String trans = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String sentenceStr = '';
    widget.sentence.words.forEach((e) {
      sentenceStr += ' $e';
    });
    Language? wordWiseLanguages =
        ref.watch(wordWiseLanguageStateNotifierProvider);
    if (wordWiseLanguages == null) {
      return Container();
    }
    MultiTapGestureRecognizer recognizer = MultiTapGestureRecognizer()
      ..onTap = (i) {
        setState(() {
          showTrans = !showTrans;
        });
      };
    Future<Text> getValue() async {
      if (trans == '') {
        GoogleTranslator translator = GoogleTranslator();
        Translation result = await translator.translate(sentenceStr,
            from: 'en', to: wordWiseLanguages.isoCode);
        trans = result.text;
      }
      TextSpan subWord = TextSpan(
          text: '       ' + "$trans",
          //style: articleTextStyle.copyWith(fontSize: 10),
          style: articleTextStyle,
          recognizer: recognizer);
      return Text.rich(subWord);
    }

    Text tip = Text.rich(
        TextSpan(text: " ༺ ", style: articleTextStyle, recognizer: recognizer));

    return showTrans
        ? FutureBuilder<Text>(
            future: getValue(), // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot<Text> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('  ......');
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  return snapshot.data!;
                } else {
                  return const Text('Empty data');
                }
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            },
          )
        : tip;
  }
}
