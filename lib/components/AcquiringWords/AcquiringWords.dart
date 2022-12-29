import 'package:entube/components/LogoLoading.dart';
import 'package:entube/components/Word/index.dart';
import 'package:entube/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state.dart';

class AcquiringWords extends HookConsumerWidget {
  const AcquiringWords({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rsp = ref.watch(acquiringWordsSNP);

    if (rsp.loading) {
      return Dialog(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(),
            Text("Loading"),
          ],
        ),
      );
    }
    if (rsp.error != null) {
      showError('${rsp.error}');
      return const LogoLoading();
    }

    if (rsp.words.isEmpty) {
      EasyLoading.showInfo('Tapping word to set/unset the acquiring word');
      return const LogoLoading();
    }
    EasyLoading.dismiss();
    var acquiringWordList = rsp.words;

    return Column(
      children: [
        Text("${acquiringWordList.length}"),
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
              //subtitle: Word(acquiringWordList[index].word),
              trailing: Text('${acquiringWordList[index].times}'),
              //isThreeLine: true,
            ),
          ),
        ))
      ],
    );
  }
}
