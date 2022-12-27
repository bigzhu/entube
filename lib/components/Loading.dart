import 'package:entube/components/LogoLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Loading extends StatelessWidget {
  const Loading(this.content, {Key? key}) : super(key: key);

  final String content;
  @override
  Widget build(BuildContext context) {
    EasyLoading.show(status: content);
    return const LogoLoading();
  }
}
