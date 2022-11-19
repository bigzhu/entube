import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
//import 'package:AcquireEnglish/components/ArticleItems/index.dart';
//import 'package:AcquireEnglish/components/PageRoute/index.dart';
//import '../configs.dart';
//import 'package:AcquireEnglish/components/Auth/index.dart';
//import 'package:AcquireEnglish/components/Error/index.dart';
//import 'package:leancloud_storage/leancloud.dart';

import 'package:entube/components/TopBar.dart';
import 'package:entube/components/BottomBar.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: TopBar(),
      //body: ArticleItems(),
      body: Container(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
