// ignore_for_file: library_prefixes

import 'package:entube/components/Auth/index.dart';
import 'package:entube/components/BottomBar.dart';
import 'package:entube/components/UserAvatar.dart';
import 'package:entube/configs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'AcquiringWords.dart';

class Page extends HookConsumerWidget {
  const Page({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String avatar = '';
    final auth = ref.watch(authP);
    final currentUser = auth.currentUser;
    if (currentUser != null) {
      avatar = currentUser.avatarUrl.toString();
    }
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => context.push('/LoggedInUserDetails'),
            child: UserAvatar(avatar: avatar)),
        title: const Text(configTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'settings',
            onPressed: () {
              //pageController.jumpToPage(2);
              // handle the press
            },
          ),
        ],
      ),
      body: const AcquiringWords(),
      bottomNavigationBar: const BottomBar(),
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ref.read(wordWiseLanguagesStateProvider.notifier).state++;
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ArticleItemService().getArticleItems(),
        child: const Icon(Icons.add),
      ),
      */
    );
  }
}
