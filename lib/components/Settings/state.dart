// ignore_for_file: constant_identifier_names

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:language_picker/languages.dart';
import 'dart:io';

const IS_SPEECH_WORD = 'is_speech_word';
const IS_SHOW_WORD_WISE = 'is_show_word_wise';
const IS_SHOW_SENTENCE_TRANS = 'is_show_sentence_trans';
const IS_COPY_TO_CLIPBOARD = 'is_copy_to_clipboard';
const IS_POP_UP_WORD_DEFINITION = 'is_pop_up_word_definition';

class WordWiseLanguageStateNotifier extends StateNotifier<Language> {
  WordWiseLanguageStateNotifier(localLang)
      : super(Language('zh-cn', 'Chinese (Simplified)')) {
    state = localLang;
    fromBox();
  }
  late Box box;
  fromBox() async {
    box = await Hive.openBox('WordWiseLanguage');
    String? isoCode = box.get('isoCode');
    if (isoCode == null) return null;
    String? name = box.get('name');
    state = Language(isoCode, name!);
  }

  set(Language language) {
    state = language;
    box.put('isoCode', state.isoCode);
    box.put('name', state.name);
  }
}

final wordWiseLanguageStateNotifierProvider =
    StateNotifierProvider<WordWiseLanguageStateNotifier, Language>((ref) {
  String isoCode = Platform.localeName.toLowerCase().replaceAll('_', '-');
  List<Language> languages = ref.watch(languagesProvider);
  //Language? localLang = languages.firstWhere((v) => v.isoCode == isoCode);
  //用上面这个会炸, 不知道是 flutter 哪里的 bug
  Language language;
  int index = languages.indexWhere((v) => v.isoCode == isoCode);
  if (index == -1) {
    language = Language('zh-cn', 'Chinese (Simplified)');
  } else {
    language = languages[index];
  }
  return WordWiseLanguageStateNotifier(language);
});

class SwitchSettingsNotifier extends StateNotifier<Map> {
  SwitchSettingsNotifier() : super({}) {
    openBox();
  }
  late Box box;
  openBox() async {
    box = await Hive.openBox('settings');
    state = await box.get('switch') ??
        {
          IS_SPEECH_WORD: false,
          IS_SHOW_WORD_WISE: true,
          IS_SHOW_SENTENCE_TRANS: false,
          IS_COPY_TO_CLIPBOARD: false,
          IS_POP_UP_WORD_DEFINITION: false
        };
  }

  set(String key, bool value) {
    state[key] = value;
    state = {...state};
    box.put('switch', state);
  }
}

final switchSettingsNotifierProvider =
    StateNotifierProvider<SwitchSettingsNotifier, Map>((ref) {
  return SwitchSettingsNotifier();
});

final languagesProvider = Provider<List<Language>>((ref) {
  return [
    Language('am', 'Amharic'),
    Language('ar', 'Arabic'),
    Language('eu', 'Basque'),
    Language('bn', 'Bengali'),
    Language('en-gb', 'English (UK)'),
    Language('pt-br', 'Portuguese (Brazil)'),
    Language('bg', 'Bulgarian'),
    Language('ca', 'Catalan'),
    Language('chr', 'Cherokee'),
    Language('hr', 'Croatian'),
    Language('cs', 'Czech'),
    Language('da', 'Danish'),
    Language('nl', 'Dutch'),
    Language('en', 'English (US)'),
    Language('et', 'Estonian'),
    Language('fil', 'Filipino'),
    Language('fi', 'Finnish'),
    Language('fr', 'French'),
    Language('de', 'German'),
    Language('el', 'Greek'),
    Language('gu', 'Gujarati'),
    Language('iw', 'Hebrew'),
    Language('hi', 'Hindi'),
    Language('hu', 'Hungarian'),
    Language('is', 'Icelandic'),
    Language('id', 'Indonesian'),
    Language('it', 'Italian'),
    Language('ja', 'Japanese'),
    Language('kn', 'Kannada'),
    Language('ko', 'Korean'),
    Language('lv', 'Latvian'),
    Language('lt', 'Lithuanian'),
    Language('ms', 'Malay'),
    Language('ml', 'Malayalam'),
    Language('mr', 'Marathi'),
    Language('no', 'Norwegian'),
    Language('pl', 'Polish'),
    Language('pt-pt', 'Portuguese (Portugal)'),
    Language('ro', 'Romanian'),
    Language('ru', 'Russian'),
    Language('sr', 'Serbian'),
    Language('zh-cn', 'Chinese (Simplified)'),
    Language('sk', 'Slovak'),
    Language('sl', 'Slovenian'),
    Language('es', 'Spanish'),
    Language('sw', 'Swahili'),
    Language('sv', 'Swedish'),
    Language('ta', 'Tamil'),
    Language('te', 'Telugu'),
    Language('th', 'Thai'),
    Language('zh-tw', 'Chinese (Traditional)'),
    Language('tr', 'Turkish'),
    Language('ur', 'Urdu'),
    Language('uk', 'Ukrainian'),
    Language('vi', 'Vietnamese'),
    Language('cy', 'Welsh'),
  ];
});
// https://docs.oracle.com/cd/E13214_01/wli/docs92/xref/xqisocodes.html
// ISO-3166 Country Codes and ISO-639 Language Codes
// ISO-639 Language Codes to ISO-3166 Country Codes
// 哪个国家说哪种语言:
// https://en.wikipedia.org/wiki/List_of_official_languages_by_country_and_territory
final languageCodeToCountryCodesProvider =
    Provider.family<List<String>, String>((ref, languageCode) {
  List<String> countryCodes = [languageCode.toUpperCase()];
  if (languageCode == 'zh-tw') countryCodes = ['TW', 'HK'];
  if (languageCode == 'zh-cn') countryCodes = ['CN'];
  if (languageCode == 'ko') countryCodes = ['KP', 'KR'];
  if (languageCode == 'ja') countryCodes = ['JP'];
  if (languageCode == 'cs') countryCodes = ['CZ'];
  if (languageCode == 'da') countryCodes = ['DK'];
  if (languageCode == 'el') countryCodes = ['GR'];
  if (languageCode == 'en-gb') countryCodes = ['AUS', 'NZL', 'GBR'];
  if (languageCode == 'en') countryCodes = ['USA'];
  if (languageCode == 'iw') countryCodes = ['IL'];
  if (languageCode == 'hi') countryCodes = ['IN'];
  if (languageCode == 'sw') countryCodes = ['RW'];
  if (languageCode == 'te') countryCodes = ['IN'];
  if (languageCode == 'ur') countryCodes = ['PK'];
  if (languageCode == 'uk') countryCodes = ['UA'];
  return countryCodes;
});

final countryEmojiProvider =
    Provider.family<String, String>((ref, languageCode) {
  List<String> countryCodes =
      ref.watch(languageCodeToCountryCodesProvider(languageCode));
  String emoji = '';
  for (var v in countryCodes) {
    int flagOffset = 0x1F1E6;
    int asciiOffset = 0x41;

    int firstChar = v.codeUnitAt(0) - asciiOffset + flagOffset;
    int secondChar = v.codeUnitAt(1) - asciiOffset + flagOffset;

    emoji =
        "$emoji ${String.fromCharCode(firstChar)}${String.fromCharCode(secondChar)}";
  }

  return emoji;
});
