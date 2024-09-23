import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/app/app_startup.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ListStyle { grid, list }

final listStyleProvider = StateNotifierProvider((ref) {
  return ListStyleNotifier(ref.read(sharedPreferencesProvider).requireValue);
});

class ListStyleNotifier extends StateNotifier<ListStyle> {
  final SharedPreferences _prefs;

  ListStyleNotifier(this._prefs) : super(ListStyle.grid) {
    _setListStyle(_getListStyle());
  }

  ListStyle get listStyle => _getListStyle();

  void toggleListStyle() {
    if (state == ListStyle.grid) {
      _setListStyle(ListStyle.list);
    } else {
      _setListStyle(ListStyle.grid);
    }
  }

  void _setListStyle(ListStyle style) {
    _prefs.setInt('list_style', style.index);
    state = style;
  }

  ListStyle _getListStyle() {
    final theme = _prefs.getInt('list_style');
    if (theme != null) {
      return ListStyle.values[theme];
    }
    return ListStyle.grid;
  }
}
