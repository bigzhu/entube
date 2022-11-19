import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:entube/configs.dart';

//  youtube 图标或者头像
//  loading 动画
class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.avatar,
    this.loading = false,
  }) : super(key: key);
  final String? avatar;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    if (loading == true) return const RefreshProgressIndicator();
    const CircleAvatar defaultAvatar =
        CircleAvatar(backgroundImage: AssetImage(configDefaultAvatar));

    return CachedNetworkImage(
      imageUrl: avatar ?? '',
      // if loading is true, aways show progress
      progressIndicatorBuilder: (context, url, downloadProgress) {
        double? value = loading == true ? null : downloadProgress.progress;
        return CircularProgressIndicator(value: value);
      },
      imageBuilder: (context, imageProvider) {
        return avatar == null || avatar!.isEmpty
            ? defaultAvatar
            : CircleAvatar(backgroundImage: imageProvider);
      },
      errorWidget: (context, url, error) => defaultAvatar,
    );
  }
}
