// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "nav_pokemon_list": "Pokémon Centre",
  "label_search_bar": "Search Pokémon by name / id",
  "alert_empty_list": "No pokémon found",
  "label_pokemon_stat_hp": "HP",
  "label_pokemon_stat_attack": "Attack",
  "label_pokemon_stat_defense": "Defense",
  "label_pokemon_stat_special_attack": "Sp. Atk",
  "label_pokemon_stat_special_defense": "Sp. Def",
  "label_pokemon_stat_speed": "Speed",
  "label_pokemon_evolution": "Evolution",
  "label_pokemon_evolution_previous": "prev.",
  "label_pokemon_evolution_next": "next",
  "label_pokemon_gallery": "Gallery",
  "label_pokemon_about": "About",
  "label_pokemon_about_height": "Height",
  "label_pokemon_about_weight": "Weight",
  "label_pokemon_about_category": "Category"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en};
}
