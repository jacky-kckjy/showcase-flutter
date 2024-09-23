import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/stat/data_pokemon_stat.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/type/data_pokemon_type.dart';

import 'data_pokemon_sprites.dart';

part 'data_pokemon.freezed.dart';
part 'data_pokemon.g.dart';

@freezed
class PokemonData with _$PokemonData {
  const factory PokemonData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "order") required int order,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "sprites") required PokemonSpritesData images,
    @JsonKey(name: "types") required List<PokemonTypeData> types,
    @JsonKey(name: "stats") required List<PokemonStatData> stats,
    @JsonKey(name: "weight") required double weight,
    @JsonKey(name: "height") required double height,
  }) = _PokemonData;

  factory PokemonData.fromJson(Map<String, Object?> data) =>
      _$PokemonDataFromJson(data);
}