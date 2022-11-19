import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:entube/configs.dart';

class LogoLoading extends StatelessWidget {
  const LogoLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[200]!,
      child: const Center(child: Image(image: AssetImage(configTransparent))),
    );
  }
}
