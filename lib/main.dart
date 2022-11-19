import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//import './article_items_page.dart';
//import './acquiring_words_page.dart';
//import '../components/PageRoute/provider.dart';
//import './settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English Tube',
      // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      home: const Home(),
    );
  }
}

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: PageView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        AritcleItemsPage(),
        //AcquiringWordsPage(),
        //SettingsPage(),
      ],
      //controller: ref.read(pageControllerProvider),
    ));
  }
}
