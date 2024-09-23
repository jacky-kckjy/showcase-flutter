import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon_language.dart';

part 'data_pokemon_genus.freezed.dart';
part 'data_pokemon_genus.g.dart';

@freezed
class PokemonGeneraData with _$PokemonGeneraData {
  const factory PokemonGeneraData({
    @JsonKey(name: "genus") required String name,
    @JsonKey(name: "language") required PokemonLangData lang,
  }) = _PokemonGeneraData;

  factory PokemonGeneraData.fromJson(Map<String, Object?> data) =>
      _$PokemonGeneraDataFromJson(data);
}
