import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './provider.dart';
import './model.dart';
import '../../components/logo_loading.dart';
import '../../components/word/index.dart';

class AcquiringWordsListView extends HookConsumerWidget {
  const AcquiringWordsListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<AcquiringWordModel> acquiringWords = ref.watch(acquiringWordsProvider);

    if (acquiringWords.isEmpty) return const LogoLoading();

    return Column(
      children: [
        Text("${acquiringWords.length}"),
        Expanded(
            child: ListView.builder(
          //shrinkWrap: true,
          itemCount: acquiringWords.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: acquiringWords[index].count > 1
                  ? const Icon(Icons.warning, color: Colors.red)
                  : const Icon(Icons.gpp_good_sharp),
              title: Word(acquiringWords[index].word),
              subtitle: Text('${acquiringWords[index].createdAt}'),
              trailing: Text('${acquiringWords[index].count}'),
              isThreeLine: true,
            ),
          ),
        ))
      ],
    );
  }
}
