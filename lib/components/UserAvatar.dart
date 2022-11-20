import 'package:entube/components/Avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserAvatar extends ConsumerWidget {
  const UserAvatar({
    Key? key,
    this.avatar,
    this.loading = false,
  }) : super(key: key);
  final String? avatar;
  final bool? loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Avatar(avatar: avatar, loading: loading));
  }
}
