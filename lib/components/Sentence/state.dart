import 'package:hooks_riverpod/hooks_riverpod.dart';

// 因为多个句子有可能在一个播放高亮区间里, 所以这里是一个 list
final playingSentencesIndexSP =
    StateProvider.family<List<int>, String>((ref, articleId) {
  return <int>[];
});
