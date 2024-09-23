import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String image;
  final Widget? placeholder;
  final Color? color;
  final double? size;
  final BoxFit? fit;
  final Alignment? alignment;

  const AppImage(
    this.image, {
    super.key,
    this.placeholder,
    this.color,
    this.size,
    this.fit,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    if (image.isEmpty == true) {
      return placeholder ?? const SizedBox.shrink();
    }
    if (image.contains("svg")) {
      return SvgPicture.asset(
        image,
        width: size,
        height: size,
        alignment: alignment ?? Alignment.center,
        colorFilter:
            (color != null) ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      );
    }
    if (image.contains("http")) {
      return CachedNetworkImage(
        fit: fit ?? BoxFit.cover,
        color: color,
        imageUrl: image,
        width: size,
        height: size,
        alignment: alignment ?? Alignment.center,
        placeholder: (context, url) =>
            (placeholder != null) ? placeholder! : const SizedBox.shrink(),
        errorWidget: (context, url, error) =>
            (placeholder != null) ? placeholder! : const SizedBox.shrink(),
      );
    }
    return Image.asset(
      image,
      width: size,
      alignment: alignment ?? Alignment.center,
    );
  }
}
