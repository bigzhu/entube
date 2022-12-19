import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading(this.content, {Key? key}) : super(key: key);

  final String content;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Center(child: CircularProgressIndicator()),
        content: Text(content));
  }
}
