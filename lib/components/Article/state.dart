import 'package:entube/components/Sentence/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

// 存储当前文章的句子
final sentencesSP = StateProvider((ref) {
  return <SentenceModel>[];
});

// 存储当前滚动显示的 index
final indexSP = StateProvider<int>((ref) {
  return 0;
});
final scrollControllerP =
    Provider<ItemScrollController>((ref) => ItemScrollController());

final isBottomP = Provider<bool>((ref) {
  final sentences = ref.watch(sentencesSP);
  final index = ref.watch(indexSP);
  bool isBottom = (sentences.length - 1 == index);
  return isBottom;
});
