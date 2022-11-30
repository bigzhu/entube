import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:leancloud_storage/leancloud.dart';

import 'package:entube/components/Article/index.dart';

class YouTubeService {
  Future<ArticleModel> addNew(String uri) async {
    //await Future.delayed(const Duration(seconds: 20), () {});
    Map response;
    try {
      response = await LCCloud.run('getContent', params: {'uri': uri});
    } on LCException catch (e) {
      debugPrint("LCException error code: ${e.code}");
      debugPrint("LCException error message: ${e.message}");
      rethrow;
    }
    // 处理结果
    //debugPrint("$response");

    //_LCObjectData objectData = _LCObjectData.decode(response);
    //debugPrint("${response['result']}");
    //ArticleModel article = response["result"] as ArticleModel;

    // some golang sdk bug, don't send className
    response["result"]["className"] = "Article";
    ArticleModel article =
        ArticleModel.parseObject(jsonEncode(response["result"]));
    return article;
    //return response['result'];
  }
}
