import 'package:entube/configs.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Thumbnail extends StatelessWidget {
  const Thumbnail(
      {Key? key, this.thumbnail, this.backgroundColor = Colors.black87})
      : super(key: key);
  final String? thumbnail;
  final Color backgroundColor;
  final Image transparent = const Image(
    image: AssetImage(configTransparent),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        color:
            backgroundColor, // must have color property otherwise can't tap to enter
        child: CachedNetworkImage(
          imageUrl: thumbnail ?? '',
          errorWidget: (context, url, error) {
            return transparent;
          },
          imageBuilder: (context, imageProvider) {
            return thumbnail == null || thumbnail!.isEmpty
                ? transparent
                : Image(image: imageProvider);
          },
          //placeholder: (context, url) => const CircularProgressIndicator(),
        ));
  }
}
