import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//import 'package:flutter_hooks/flutter_hooks.dart';
//import '../ArticleItems/provider.dart';
//import './provider.dart';
//import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BottomBar extends HookConsumerWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //int wordWiseLanguages = ref.watch(wordWiseLanguagesStateProvider);
    const items = [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.explore,
        ),
        label: "Explore",
      ),
    ];

    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (i) {},
      items: items,
    );
  }
}
