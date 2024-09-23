import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon_language.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/type/data_pokemon_type_detail.dart';

import '../../../enums/type_pokemon.dart';

part 'data_pokemon_flavor_text.freezed.dart';
part 'data_pokemon_flavor_text.g.dart';

@freezed
class PokemonFlavorTextData with _$PokemonFlavorTextData {
  const factory PokemonFlavorTextData({
    @JsonKey(name: "flavor_text") required String text,
    @JsonKey(name: "language") required PokemonLangData lang,
  }) = _PokemonFlavorTextData;

  factory PokemonFlavorTextData.fromJson(Map<String, Object?> data) =>
      _$PokemonFlavorTextDataFromJson(data);
}