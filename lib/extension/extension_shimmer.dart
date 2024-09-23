import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:shimmer/shimmer.dart';

extension ShimmerWidgetExtension on Widget {
  String _randomString(int len) {
    var r = Random();
    return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89),
    );
  }

  Widget shimmer(
    bool loading, {
    Key? key,
    ThemeMode themeMode = ThemeMode.light,
  }) {
    return (loading)
        ? Shimmer.fromColors(
            key: key,
            period: 2000.ms,
            baseColor: themeMode == ThemeMode.light
                ? Colors.grey[300]!
                : Colors.grey[800]!,
            highlightColor: themeMode == ThemeMode.light
                ? Colors.grey[100]!
                : Colors.grey[700]!,
            child: this,
          )
        : this;
  }
}

extension ShimmerTextExtension on Text {
  Widget shimmer(
    bool loading, {
    int line = 1,
    double? width,
    ThemeMode themeMode = ThemeMode.light,
  }) {
    final shimmer = Shimmer.fromColors(
        baseColor: themeMode == ThemeMode.light
            ? Colors.grey[300]!
            : Colors.grey[800]!,
        highlightColor: themeMode == ThemeMode.light
            ? Colors.grey[100]!
            : Colors.grey[700]!,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * (width ?? 1),
              height: (style!.fontSize! * style!.height! + 2) * line,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.radiusExtraLarge),
                color: Colors.white,
              ),
              child: Text(_randomString(100)),
            );
          },
        ));
    if (loading) {
      return shimmer;
    } else {
      return this;
    }
  }
}
