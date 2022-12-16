import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'state.dart';

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
          Icons.video_library,
        ),
        label: "Tube",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.local_library,
        ),
        label: "Words",
      ),
    ];
    final navigationBarIndex = ref.watch(navigationBarIndexSP);

    return BottomNavigationBar(
      currentIndex: navigationBarIndex,
      onTap: (i) {
        if (i == 0 && navigationBarIndex != i) {
          ref.read(navigationBarIndexSP.notifier).state = i;
          if (context.canPop()) context.pop();
        }
        if (i == 1 && navigationBarIndex != i) {
          ref.read(navigationBarIndexSP.notifier).state = i;
          context.push('/AcquiringWords');
        }
        if (i == 2 && navigationBarIndex != i) {
          Navigator.of(context).pushReplacementNamed('/words');
        }
      },
      items: items,
    );
  }
}
