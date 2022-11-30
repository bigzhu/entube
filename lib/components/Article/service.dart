import 'dart:collection';
import 'package:leancloud_storage/leancloud.dart';
import './model.dart';
import './sentence_model.dart';

class ArticleService {
  Future<ArticleModel?> fetchSentencesById(String articleId) async {
    LCQuery<ArticleModel> query = LCQuery('Article');
    query.whereEqualTo('objectId', articleId);

    //进行多级查询的方式不适用于数组属性内部的 LCObject，只能包含到数组本身
    //也就是查出来一堆 list 里面只有 id
    ArticleModel? article = await query.first();

    //转换 article 的 sentence 类型
    if (article != null) {
      article.sentences = (article['sentences'] as List).map((e) {
        return SentenceModel.fromJson(HashMap.from(e));
      }).toList();
    }
    return article;
  }
}
