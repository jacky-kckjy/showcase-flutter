import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/type/data_pokemon_type_detail.dart';

import '../../../enums/type_pokemon.dart';

part 'data_pokemon_type.freezed.dart';
part 'data_pokemon_type.g.dart';

@freezed
class PokemonTypeData with _$PokemonTypeData {
  const factory PokemonTypeData({
    @JsonKey(name: "type") required PokemonTypeDetailData data,
  }) = _PokemonTypeData;

  factory PokemonTypeData.fromJson(Map<String, Object?> data) =>
      _$PokemonTypeDataFromJson(data);
}