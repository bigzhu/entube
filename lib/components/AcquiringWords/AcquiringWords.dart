import 'package:entube/components/Word/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state.dart';

class AcquiringWords extends HookConsumerWidget {
  const AcquiringWords({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final acquiringWords = ref.watch(acquiringWordsSNP);
    if (acquiringWords.isEmpty) {
      return const AlertDialog(
          title: Text('No Data'),
          content: Text('Tapping word to set/unset the acquiring word'));
    }
    var acquiringWordList = [];
    acquiringWords.forEach((k, v) => acquiringWordList.add(v));

    return Column(
      children: [
        Text("${acquiringWords.length}"),
        Expanded(
            child: ListView.builder(
          //shrinkWrap: true,
          itemCount: acquiringWordList.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: acquiringWordList[index].times > 1
                  ? const Icon(Icons.warning, color: Colors.red)
                  : const Icon(Icons.gpp_good_sharp),
              title: Word(acquiringWordList[index].word),
              subtitle: Text('${acquiringWordList[index].created_at.value}'),
              trailing: Text('${acquiringWordList[index].times}'),
              isThreeLine: true,
            ),
          ),
        ))
      ],
    );
  }
}
