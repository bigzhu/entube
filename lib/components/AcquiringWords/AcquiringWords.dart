import 'package:entube/components/LogoLoading.dart';
import 'package:entube/components/Word/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state.dart';

class AcquiringWords extends HookConsumerWidget {
  const AcquiringWords({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final acquiringWordsStream = ref.watch(acquiringWordsStreamP);
    final acquiringWordsRsp = useStream(acquiringWordsStream);
    if (acquiringWordsRsp.hasError) {
      return AlertDialog(
          title: const Text('Error'),
          content: Text(acquiringWordsRsp.error.toString()));
    }

    if (acquiringWordsRsp.data == null) {
      return const LogoLoading();
    }

    final acquiringWords = acquiringWordsRsp.data?.data?.words;
    if (acquiringWords == null) {
      return const AlertDialog(
          title: Text('No Data'),
          content: Text('Tapping word to set/unset the acquiring word'));
    }

    return Column(
      children: [
        Text("${acquiringWords.length}"),
        Expanded(
            child: ListView.builder(
          //shrinkWrap: true,
          itemCount: acquiringWords.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: acquiringWords[index].times > 1
                  ? const Icon(Icons.warning, color: Colors.red)
                  : const Icon(Icons.gpp_good_sharp),
              title: Word(acquiringWords[index].word),
              subtitle: Text('${acquiringWords[index].created_at}'),
              trailing: Text('${acquiringWords[index].times}'),
              isThreeLine: true,
            ),
          ),
        ))
      ],
    );
  }
}
