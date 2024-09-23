import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon_url.dart';

part 'data_pokemon_evolve_detail.freezed.dart';
part 'data_pokemon_evolve_detail.g.dart';

@freezed
class PokemonEvolveDetailData with _$PokemonEvolveDetailData {
  const factory PokemonEvolveDetailData({
    @JsonKey(name: "trigger") required PokemonUrlData data,
  }) = _PokemonEvolveDetailData;

  factory PokemonEvolveDetailData.fromJson(Map<String, Object?> data) =>
      _$PokemonEvolveDetailDataFromJson(data);
}
