import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './state.dart';

class Setting extends HookConsumerWidget {
  const Setting(
      {Key? key,
      required this.title,
      required this.desc,
      required this.settingKey,
      required this.icon})
      : super(key: key);
  final String title;
  final String desc;
  final String settingKey;
  final IconData icon;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(desc),
          trailing: Switch(
              value: ref.watch(switchSettingsNotifierProvider
                  .select((value) => value[settingKey] ?? false)),
              onChanged: (value) {
                ref
                    .watch(switchSettingsNotifierProvider.notifier)
                    .set(settingKey, value);
              })),
    );
  }
}
