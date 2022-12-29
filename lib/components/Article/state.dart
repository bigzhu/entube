import 'dart:convert';

import 'package:entube/components/Sentence/index.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:entube/state.dart';
import 'package:entube/utils/index.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:http/http.dart' as http;
import 'package:built_value/json_object.dart';
import 'g/services.req.gql.dart';

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

class ArticleModel {
  //String? info;
  //bool? loading;
  List<SentenceModel>? sentences;
  ArticleModel([this.sentences]);
}

class SentencesSN extends StateNotifier<ArticleModel> {
  SentencesSN(this.ref, this.articleId) : super(ArticleModel()) {
    client = ref.watch(gqlClientP);
    fetch();
  }
  String articleId;
  bool loading = false;
  late Client client;
  final Ref ref;

  void fetch() async {
    final sentencesReq =
        GSentencesReq((b) => b..vars.id = Guuid(articleId).toBuilder());
    final stream = client.request(sentencesReq);
    //state = ArticleModel('main loading', true);
    await for (final value in stream) {
      final article = value.data?.articles[0];
      if (article != null) {
        List<dynamic>? sentencesJson = article.sentences?.asList;
        final url = article.url;
        if (sentencesJson == null) {
          EasyLoading.show(status: 'Syncing captions from YouTube...');
          sentencesJson = await fetchYouTubeCaptions(url);
          if (sentencesJson.isEmpty) {
            EasyLoading.showInfo("This video don't have any English captions.",
                duration: const Duration(minutes: 5), dismissOnTap: true);
            return;
          }
          EasyLoading.showInfo("Saving video captions...");
          saveSentences(sentencesJson);
          // 删除缓存
          client.cache.evict(client.cache.identify(article)!);
        }
        List<SentenceModel> sentences = sentencesJson.map((e) {
          return SentenceModel.fromJson(Map<String, dynamic>.from(e));
        }).toList();
        ref.read(sentencesSP.notifier).state = sentences;
        EasyLoading.dismiss();
        state = ArticleModel(sentences);
        return;
      }
    }
  }

  void cleanCache() {}

  Future<void> saveSentences(List<dynamic> sentences) async {
    final req = GupdateSentencesReq(
      (b) => b
        ..vars.id = Guuid(articleId).toBuilder()
        ..vars.sentences = JsonObject(sentences),
    );
    final stream = client.request(req);
    await for (final value in stream) {
      final id = value.data?.update_articles_by_pk?.id;
      if (id != null) {
        cleanCache();
        //cache.evict(id.value);
        return;
      }
      if (value.hasErrors) {
        showError("${value.graphqlErrors ?? value.linkException}");
      }
    }
  }

  Future<List<dynamic>> fetchYouTubeCaptions(String url) async {
    final nhostClient = ref.watch(nhostClientP);
    final response = await http.get(
        Uri.parse(
            'https://entube-uzv2eu4hta-de.a.run.app/?what=sentences&uri=$url'),
        headers: {'Authorization': 'Bearer ${nhostClient.auth.accessToken}'});

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return json;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      showError('Error: ${response.statusCode} ${response.body}');

      throw Exception('Failed to load YouTube captions');
    }
  }
}

final sentencesSNP = StateNotifierProvider.autoDispose
    .family<SentencesSN, ArticleModel, String>((ref, articleId) {
  SentencesSN sentencesSN = SentencesSN(ref, articleId);
  ref.keepAlive();
  return sentencesSN;
});
