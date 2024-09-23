import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon_url.dart';

part 'data_results_pokemon.freezed.dart';
part 'data_results_pokemon.g.dart';

@freezed
class PokemonResultsData with _$PokemonResultsData {
  const factory PokemonResultsData({
    @JsonKey(name: "results") required List<PokemonUrlData> results,
  }) = _PokemonResultsData;

  factory PokemonResultsData.fromJson(Map<String, Object?> data) =>
      _$PokemonResultsDataFromJson(data);
}
