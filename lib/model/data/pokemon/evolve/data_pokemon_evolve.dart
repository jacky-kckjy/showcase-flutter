import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon_url.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/evolve/data_pokemon_evolve_detail.dart';

part 'data_pokemon_evolve.freezed.dart';
part 'data_pokemon_evolve.g.dart';

@freezed
class PokemonEvolveData with _$PokemonEvolveData {
  const factory PokemonEvolveData({
    @JsonKey(name: "evolution_details")
    required List<PokemonEvolveDetailData> evolveFrom,
    @JsonKey(name: "evolves_to") required List<PokemonEvolveData> evolveTo,
    @JsonKey(name: "species") required PokemonUrlData species,
  }) = _PokemonEvolveData;

  factory PokemonEvolveData.fromJson(Map<String, Object?> data) =>
      _$PokemonEvolveDataFromJson(data);
}
