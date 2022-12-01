import 'package:entube/components/Article/services.data.gql.dart';
import 'package:entube/components/Sentence/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'dart:collection';

import 'package:entube/graphql/schema.schema.gql.dart';
import 'package:entube/components/AcquiringWords/index.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:entube/components/Error/index.dart';
import './service.dart';

class IsToArticleBottomStateNotifier extends StateNotifier<bool> {
  IsToArticleBottomStateNotifier(
      this.ref, this.articleId, this.lastSentencesIndex)
      : super(false) {
    bind();
  }
  final Ref ref;
  final String articleId;
  final int lastSentencesIndex;
  ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  void bind() {
    //监听是否已经显示到最后一个句子
    itemPositionsListener.itemPositions.addListener(() {
      int showedIndex = itemPositionsListener.itemPositions.value
          .toList()[itemPositionsListener.itemPositions.value.length - 1]
          .index;
      if (lastSentencesIndex == showedIndex) {
        state = true;
      } else {
        state = false;
      }
    });
  }
}

//得到是否滚动到了文章底部
final isToArticleBottomStateNotifierProvider = StateNotifierProvider.autoDispose
    .family<IsToArticleBottomStateNotifier, bool, Guuid>((ref, articleId) {
  int lastSentencesIndex = -1;
  GArticleSentencesData_articles? articleWithSentence =
      ref.watch(articleStateNotifierProvider(articleId));
  if (articleWithSentence != null) {
    lastSentencesIndex = articleWithSentence.sentences.length - 1;
  }
  IsToArticleBottomStateNotifier isToArticleBottomStateNotifier =
      IsToArticleBottomStateNotifier(ref, articleId, lastSentencesIndex);
  return isToArticleBottomStateNotifier;
});

final itemPositionsListenerProvider =
    Provider<ItemPositionsListener>((ref) => ItemPositionsListener.create());

final sentencesScrollControllerProvider =
    Provider<ItemScrollController>((ref) => ItemScrollController());

final scrollToArticleStateProvider =
    StateProvider<ArticleModel?>((ref) => null);

class ArticlesStateNotifier extends StateNotifier<ArticleModel?> {
  ArticlesStateNotifier(this.ref, this.articleId) : super(null) {
    fetch();
  }
  final Ref ref;
  final Guuid articleId;
  late Box box;

  void fetch() async {
    box = await Hive.openBox('acquiringWords');
    state = fromJson();
    if (state == null) {
      try {
        state = await ArticleService().fetchSentencesById(articleId.toString());
      } on LCException catch (e) {
        ref
            .read(errorMeesageStateProvider.notifier)
            .update((state) => e.message);
      }
      box.put(articleId, state.toString());
    }
  }

  ArticleModel? fromJson() {
    final articleJSON = box.get(articleId);
    if (articleJSON == null) return null;
    ArticleModel article = LCObject.parseObject(articleJSON) as ArticleModel;
    article.sentences = (article['sentences'] as List).map((e) {
      return SentenceModel.fromJson(HashMap.from(e));
    }).toList();
    return article;
  }
}

final articleStateNotifierProvider = StateNotifierProvider.autoDispose
    .family<ArticlesStateNotifier, GArticleSentencesData_articles?, Guuid>(
        (ref, articleId) {
  ArticlesStateNotifier articlesStateNotifier =
      ArticlesStateNotifier(ref, articleId);
  ref.keepAlive();
  return articlesStateNotifier;
});

final acticleWordsSetProvider =
    StateProvider.autoDispose.family<Set<String>, String>((ref, articleId) {
  Set<String> wordsSet = {};
  final article = ref.watch(articleStateNotifierProvider(articleId));
  if (article == null) return {};
  for (SentenceModel sentence in article.sentences.asList) {
    wordsSet = {...wordsSet, ...(sentence.words.toSet())};
  }
  ref.keepAlive();
  return wordsSet;
});

// 标记是否 tap article, 避免用户滚动时自动滚动
final tapingStateProvider = StateProvider<bool>((ref) => false);

final tapingProvider = Provider((ref) => Repository(ref));

class Repository {
  Repository(this.ref);

  final Ref ref;
  bool isScrolling() {
    return ref.read(tapingStateProvider);
  }
}

// 学习进度
final acquiringPercentProvider =
    Provider.autoDispose.family<double?, String>((ref, articleId) {
  final acticleWordsSet = ref.watch(acticleWordsSetProvider(articleId));
  final acquiringWordsSet = ref.watch(acquiringWordsSetProvider);
  //如果待获取单词是空的, 大概率是未取完数, 不要返回 percent
  if (acquiringWordsSet.isEmpty) return null;
  if (acticleWordsSet.isEmpty) return null;
  int wordCount = acticleWordsSet.length;
  int acquiringWordCount = 0;
  for (String word in acticleWordsSet) {
    if (acquiringWordsSet.contains(word.toLowerCase())) acquiringWordCount++;
  }
  double percent = ((wordCount - acquiringWordCount) * 100 / wordCount);
  ref.keepAlive();
  return percent;
});
