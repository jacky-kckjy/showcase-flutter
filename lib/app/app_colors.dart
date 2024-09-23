import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor get primary => _blue;
  static Color get error => const Color(0xFFEE6C8A);
  static Color get errorLight => const Color(0xFFFFECF0);

  static const Color _blue50 = Color(0xFFE0F7F8);
  static const Color _blue100 = Color(0xFFB1EBED);
  static const Color _blue200 = Color(0xFF80DDE2);
  static const Color _blue300 = Color(0xFF4DCFD8);
  static const Color _blue400 = Color(0xFF26C5D0);
  static const Color _blue500 = Color(0xFF00BACA);
  static const Color _blue600 = Color(0xFF00ABB8);
  static const Color _blue700 = Color(0xFF00959E);
  static const Color _blue800 = Color(0xFF028187);
  static const Color _blue900 = Color(0xFF055E5D);

  static final MaterialColor _blue = MaterialColor(
    _blue400.value,
    const <int, Color>{
      50: _blue50,
      100: _blue100,
      200: _blue200,
      300: _blue300,
      400: _blue400,
      500: _blue500,
      600: _blue600,
      700: _blue700,
      800: _blue800,
      900: _blue900
    },
  );
}
