import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:lottie/lottie.dart';

class LoadingIndicator extends StatelessWidget {
  final double? size;

  const LoadingIndicator({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      "resources/lotties/loading.json",
      width: size ?? AppDimens.iconLarger,
      height: size ?? AppDimens.iconLarger,
    );
  }
}
