import 'package:flutter/animation.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension AnimateExtensions<T> on AnimateManager<T> {
  T valueChange({
    required CustomEffectBuilder builder,
    Duration? delay,
    Duration? duration,
    Curve? curve,
    double? begin = 0,
    double? end = 1,
  }) => addEffect(CustomEffect(
    builder: builder,
    delay: delay,
    begin: begin,
    end: end,
    duration: duration ?? const Duration(milliseconds: 1000),
    curve: curve ?? Curves.easeOutCubic,
  ));
}