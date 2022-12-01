import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:language_picker/languages.dart';
import 'package:translator/translator.dart';
//import 'package:entube/components/AcquiringWords/index.dart';
import 'package:entube/components/Settings/index.dart';

class WordTransStateNotifier extends StateNotifier<String?> {
  WordTransStateNotifier(this.ref, this.word, this.isAcquiringWord)
      : super(null) {
    fetch();
    ref.listen<Language?>(wordWiseLanguageStateNotifierProvider,
        (Language? previous, Language? next) {
      if (previous != next || previous?.isoCode != next?.isoCode) {
        fetch();
      }
    });
  }
  final Ref ref;
  final String word;
  final isAcquiringWord;
  final translator = GoogleTranslator();

  void fetch() async {
    if (isAcquiringWord == false) return;
    Language? wordWiseLanguages =
        ref.watch(wordWiseLanguageStateNotifierProvider);
    if (wordWiseLanguages == null) {
      return;
    }
    Box box = await Hive.openBox(wordWiseLanguages.isoCode);
    state = box.get(word);
    if (state == null) {
      final result = await translator.translate(word,
          from: 'en', to: wordWiseLanguages.isoCode);
      state = result.text;
      box.put(word, state);
    }
  }
}

final wordTransStateNotifierProvider = StateNotifierProvider.autoDispose
    .family<WordTransStateNotifier, String?, String>((ref, word) {
  bool isAcquiringWord = false;
  /*
  final AcquiringWordModel? acquiringWord = ref.watch(
      acquiringWordsMapStateProvider
          .select((value) => value[word.toLowerCase()]));
  if (acquiringWord?.done == false) isAcquiringWord = true;
  */

  WordTransStateNotifier wordTransStateNotifier =
      WordTransStateNotifier(ref, word, isAcquiringWord);
  ref.keepAlive();
  return wordTransStateNotifier;
});
