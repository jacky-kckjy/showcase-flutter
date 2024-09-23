import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/type/data_pokemon_type_detail.dart';

import '../../../enums/type_pokemon.dart';
import 'data_pokemon_stat_detail.dart';

part 'data_pokemon_stat.freezed.dart';
part 'data_pokemon_stat.g.dart';

@freezed
class PokemonStatData with _$PokemonStatData {
  const factory PokemonStatData({
    @JsonKey(name: "base_stat") required int value,
    @JsonKey(name: "stat") required PokemonStatDetailData data,
  }) = _PokemonStatData;

  factory PokemonStatData.fromJson(Map<String, Object?> data) =>
      _$PokemonStatDataFromJson(data);
}