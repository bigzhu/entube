import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:entube/components/UserAvatar.dart';
import 'package:entube/configs.dart';

class TopBar extends HookConsumerWidget implements PreferredSizeWidget {
  const TopBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String avatar = '';
    return AppBar(
      leading: UserAvatar(avatar: avatar),
      title: const Text(configTitle),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: 'settings',
          onPressed: () {
            //pageController.jumpToPage(2);
          },
        ),
      ],
    );
  }
}
