import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/app/app_startup.dart';
import 'package:shared_preferences/shared_preferences.dart';

final appThemeModeProvider = StateNotifierProvider((ref) {
  return AppThemeNotifier(ref.read(sharedPreferencesProvider).requireValue);
});

class AppThemeNotifier extends StateNotifier<ThemeMode> {
  final SharedPreferences _prefs;

  AppThemeNotifier(this._prefs) : super(ThemeMode.light) {
    _setThemeData(_getThemeData());
  }

  ThemeMode get themeMode => _getThemeData();

  void toggleThemeMode() {
    if (state == ThemeMode.light) {
      _setThemeData(ThemeMode.dark);
    } else {
      _setThemeData(ThemeMode.light);
    }
  }

  void _setThemeData(ThemeMode themeMode) {
    _prefs.setInt('theme', themeMode.index);
    state = themeMode;
  }

  ThemeMode _getThemeData() {
    final theme = _prefs.getInt('theme');
    if (theme != null) {
      return ThemeMode.values[theme];
    }
    return ThemeMode.light;
  }
}