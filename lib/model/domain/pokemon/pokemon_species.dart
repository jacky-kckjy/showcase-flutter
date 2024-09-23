import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species.freezed.dart';
part 'pokemon_species.g.dart';

@freezed
class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies({
    required List<String> flavorTexts,
    required String genus,
  }) = _PokemonSpecies;

  factory PokemonSpecies.initial() => const PokemonSpecies(
        flavorTexts: [],
        genus: '',
      );

  factory PokemonSpecies.fromJson(Map<String, Object?> data) =>
      _$PokemonSpeciesFromJson(data);
}
