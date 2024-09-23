import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon_url.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/species/data_pokemon_flavor_text.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/species/data_pokemon_genus.dart';

part 'data_pokemon_species.freezed.dart';
part 'data_pokemon_species.g.dart';

@freezed
class PokemonSpeciesData with _$PokemonSpeciesData {
  const PokemonSpeciesData._();

  const factory PokemonSpeciesData({
    @JsonKey(name: "flavor_text_entries")
    required List<PokemonFlavorTextData> flavorTexts,
    @JsonKey(name: "genera") required List<PokemonGeneraData> genera,
    @JsonKey(name: "evolution_chain") required PokemonUrlData evolution,
  }) = _PokemonSpeciesData;

  @JsonKey(includeFromJson: false, includeToJson: false)
  String get evolutionId {
    final uri = Uri.parse(evolution.url);
    return uri.pathSegments[uri.pathSegments.length - 2];
  }

  factory PokemonSpeciesData.fromJson(Map<String, Object?> data) =>
      _$PokemonSpeciesDataFromJson(data);
}
