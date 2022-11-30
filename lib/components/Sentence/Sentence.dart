import 'package:entube/components/Article/index.dart';
import 'package:entube/graphql/schema.schema.gql.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'SentenceModel.dart';
import 'Words.dart';

class Sentence extends ConsumerWidget {
  const Sentence(
      {Key? key,
      required this.sentence,
      required this.index,
      required this.articleId})
      : super(key: key);
  final SentenceModel sentence;
  final int index;
  final Guuid articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isPlaying = ref.watch(playingSentencesIndexStateProvider(articleId)
        .select((value) => value.contains(index)));

    return DecoratedBox(
        decoration: isPlaying
            ? const BoxDecoration(color: Color(0xFFE0F2F1))
            : const BoxDecoration(),
        child: ExcludeSemantics(
          excluding: true,
          child: Words(sentence: sentence, isPlaying: isPlaying),
        ));
  }
}
