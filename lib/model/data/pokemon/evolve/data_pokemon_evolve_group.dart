import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon_url.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/evolve/data_pokemon_evolve.dart';

part 'data_pokemon_evolve_group.freezed.dart';
part 'data_pokemon_evolve_group.g.dart';

@freezed
class PokemonEvolveGroupData with _$PokemonEvolveGroupData {
  const factory PokemonEvolveGroupData({
    @JsonKey(name: "chain") required PokemonEvolveData chain,
  }) = _PokemonEvolveGroupData;

  factory PokemonEvolveGroupData.fromJson(Map<String, Object?> data) =>
      _$PokemonEvolveGroupDataFromJson(data);
}
