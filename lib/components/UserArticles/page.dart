// ignore_for_file: library_prefixes

import 'package:entube/components/Auth/index.dart';
import 'package:entube/components/BottomBar.dart';
import 'package:entube/components/UserAvatar.dart';
import 'package:entube/configs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'Items.dart';
import 'state.dart';

class Page extends HookConsumerWidget {
  const Page({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEarliestRead = ref.watch(isEarliestReadSP);
    String avatar = '';
    final auth = ref.watch(authP);
    final currentUser = auth.currentUser;
    if (currentUser != null) {
      avatar = currentUser.avatarUrl.toString();
    }
    return Scaffold(
      floatingActionButton: ElevatedButton.icon(
        onPressed: () {
          if (isEarliestRead) {
            ref.read(userArticlesSNP.notifier).sortByLatestAdd();
            ref.read(isEarliestReadSP.notifier).state = false;
          } else {
            ref.read(userArticlesSNP.notifier).sortByEarliestRead();
            ref.read(isEarliestReadSP.notifier).state = true;
          }
        },
        icon: isEarliestRead
            ? const Icon(Icons.history)
            : const Icon(Icons.format_list_numbered),
        label: isEarliestRead
            ? const Text('Earliest read')
            : const Text('Latest add'),
      ),
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
      body: const Items(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
