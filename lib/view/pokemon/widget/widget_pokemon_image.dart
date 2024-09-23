import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:showcase_showcase_flutter/widget/widget_image.dart';

@immutable
class PokemonImageItem extends StatelessWidget {
  final String image;
  final double? size;

  const PokemonImageItem({
    super.key,
    required this.image,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FractionallySizedBox(
          heightFactor: 0.8,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          ),
        ),
        if (image.contains("https") && image.contains("svg"))
          SvgPicture.network(
            image,
            height: size,
            allowDrawingOutsideViewBox: true,
          )
        else
          AppImage(
            image,
            size: size,
            fit: BoxFit.contain,
          ),
      ],
    );
  }
}
