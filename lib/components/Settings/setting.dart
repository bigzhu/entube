import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './provider.dart';

class Setting extends HookConsumerWidget {
  const Setting({Key? key, this.title, this.desc, this.settingKey, this.icon})
      : super(key: key);
  final title;
  final desc;
  final settingKey;
  final icon;
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
