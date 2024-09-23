import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle displayLarge({Color? color}) =>
      _bold(color: color).copyWith(fontSize: 32);

  static TextStyle displayMedium({Color? color}) =>
      _bold(color: color).copyWith(fontSize: 28);

  static TextStyle displaySmall({Color? color}) =>
      _bold(color: color).copyWith(fontSize: 25);

  static TextStyle headlineLarge({Color? color}) =>
      _bold(color: color).copyWith(fontSize: 23);

  static TextStyle headlineMedium({Color? color}) =>
      _bold(color: color).copyWith(fontSize: 20);

  static TextStyle headlineSmall({Color? color}) =>
      _bold(color: color).copyWith(fontSize: 18);

  static TextStyle titleLarge({Color? color}) =>
      _semiBold(color: color).copyWith(fontSize: 17);

  static TextStyle titleMedium({Color? color}) =>
      _semiBold(color: color).copyWith(fontSize: 16);

  static TextStyle titleSmall({Color? color}) =>
      _semiBold(color: color).copyWith(fontSize: 14);

  static TextStyle bodyLarge({Color? color}) =>
      _regular(color: color).copyWith(fontSize: 16);

  static TextStyle bodyMedium({Color? color}) =>
      _regular(color: color).copyWith(fontSize: 14, height: 1.3);

  static TextStyle bodySmall({Color? color}) =>
      _regular(color: color).copyWith(fontSize: 12, height: 1.5);

  static TextStyle _bold({Color? color}) => TextStyle(
      height: 1.25,
      fontFamily: 'Baloo',
      fontWeight: FontWeight.w700,
      color: color);

  static TextStyle _semiBold({Color? color}) => TextStyle(
      height: 1.25,
      fontFamily: 'Baloo',
      fontWeight: FontWeight.w600,
      color: color);

  static TextStyle _regular({Color? color}) => TextStyle(
        height: 1.25,
        fontFamily: 'Baloo',
        fontWeight: FontWeight.w500,
        color: color,
      );
}
