import 'package:collection/collection.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/evolve/data_pokemon_evolve.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/evolve/data_pokemon_evolve_group.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon_dimen.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon_species.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon_stat.dart';

import '../model/data/pokemon/species/data_pokemon_species.dart';
import '../model/domain/pokemon/pokemon.dart';

extension PokemonDataExtension on PokemonData {
  Pokemon convert({
    PokemonSpeciesData? species,
    List<Pokemon>? nextEvolutions,
    Pokemon? previousEvolutions,
  }) {
    return Pokemon(
      id: id,
      order: order,
      name: name,
      gallery: [
        images.others.official.image,
        images.others.dreamWorld.image,
        images.others.home.image,
        images.others.showdown.image,
      ],
      image: images.others.official.image,
      types: types.map((e) => e.data.type).toList(),
      stats: stats
          .map((e) => PokemonStat(value: e.value, stat: e.data.stat))
          .toList(),
      // according to community, the height and weight should be divided by 10
      // refs: https://github.com/PokeAPI/pokeapi/issues/380
      dimen: PokemonDimen(
        height: height / 10,
        weight: weight / 10,
      ),
      species: (species != null) ? species.convert() : PokemonSpecies.initial(),
      nextEvolutions: nextEvolutions ?? [],
      previousEvolutions: previousEvolutions,
    );
  }
}

extension PokemonSpeciesDataExtension on PokemonSpeciesData {
  PokemonSpecies convert() {
    return PokemonSpecies(
      flavorTexts: flavorTexts
          .where((e) => e.lang.lang == "en")
          .map((e) => e.text)
          .toList(),
      genus: genera.firstWhere((e) => e.lang.lang == "en").name,
    );
  }
}

extension PokemonEvolveGroupDataExtension on PokemonEvolveGroupData {
  PokemonEvolveData? _findNext(List<PokemonEvolveData> list, String targetId) {
    for (PokemonEvolveData item in list) {
      if (item.species.id == targetId) {
        return item;
      }
      final result =
          item.evolveTo.firstWhereOrNull((e) => e.species.id == targetId);
      if (result != null && result.species.id != targetId) {
        return item;
      } else {
        return _findNext(item.evolveTo, targetId);
      }
    }
    return null;
  }

  PokemonEvolveData? _findPrevious(
    List<PokemonEvolveData> list,
    String targetId,
  ) {
    for (PokemonEvolveData item in list) {
      final result =
          item.evolveTo.firstWhereOrNull((e) => e.species.id == targetId);
      if (result != null) {
        return item;
      } else {
        return _findPrevious(item.evolveTo, targetId);
      }
    }
    return null;
  }

  List<String> nextEvolutionIds(String id) {
    if (id == chain.species.id) {
      // if the id is the same as the species id, it means that the pokemon is the first evolution
      return chain.evolveTo.map((e) => e.species.id).toList();
    }
    return _findNext(chain.evolveTo, id)
            ?.evolveTo
            .map((e) => e.species.id)
            .toList() ??
        [];
  }

  String? previousEvolutionId(String id) {
    if (id == chain.species.id) {
      // if the id is the same as the species id, it means that the pokemon is the first evolution
      return null;
    }
    final result = chain.evolveTo.firstWhereOrNull((e) => e.species.id == id);
    if (result != null) {
      return chain.species.id;
    } else {
      final result = _findPrevious(chain.evolveTo, id)?.species.id;
      return result;
    }
  }
}
