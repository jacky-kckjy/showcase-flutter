import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon_dimen.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon_species.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon_stat.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required int order,
    required String name,
    required String image,
    required List<String> gallery,
    required List<PokemonType> types,
    required List<PokemonStat> stats,
    required PokemonDimen dimen,
    required PokemonSpecies species,
    required List<Pokemon> nextEvolutions,
    required Pokemon? previousEvolutions,
  }) = _Pokemon;

  factory Pokemon.initial() => Pokemon(
        id: -1,
        order: 0,
        name: 'dummy',
        image: '',
        gallery: [],
        dimen: PokemonDimen.initial(),
        types: [PokemonType.normal],
        stats: [],
        species: PokemonSpecies.initial(),
        nextEvolutions: [],
        previousEvolutions: null,
      );

  factory Pokemon.fromJson(Map<String, Object?> data) =>
      _$PokemonFromJson(data);
}
