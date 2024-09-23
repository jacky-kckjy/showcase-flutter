import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:showcase_showcase_flutter/extension/extension_pokemon.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/evolve/data_pokemon_evolve_group.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/species/data_pokemon_species.dart';
import 'package:showcase_showcase_flutter/repository/pokemon/repository_pokemon.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../app/app_nav.dart';
import '../../../model/domain/pokemon/pokemon.dart';

part 'provider_pokemon_detail.g.dart';

@riverpod
class PokemonDetailViewModel extends _$PokemonDetailViewModel {
  late final repository = ref.read(pokemonRepositoryProvider);

  @override
  FutureOr<Pokemon?> build(
    String id, {
    Pokemon? initialValue,
  }) {
    if (initialValue != null) {
      _fetchAdditionDetail();
      return initialValue.copyWith(
        nextEvolutions: List.filled(4, Pokemon.initial()),
      );
    }
    return repository.getPokemon(id)..then((e) => _fetchAdditionDetail());
  }

  Future<void> _fetchAdditionDetail() async {
    final species = await repository.getPokemonSpecies(id);
    if (species is PokemonSpeciesData) {
      state = AsyncData(state.value?.copyWith(
        species: species.convert(),
      ));
      final evolution =
          await repository.getPokemonEvolution(species.evolutionId);
      if (evolution is PokemonEvolveGroupData) {
        log('current: ${state.value?.id}', name: 'pokemon_detail');
        final previous = evolution.previousEvolutionId(id);
        final next = evolution.nextEvolutionIds(id);
        log('previous: $previous', name: 'pokemon_detail');
        log('next: $next', name: 'pokemon_detail');
        Future.wait([
          if (previous != null) repository.getPokemon(previous),
          for (final id in next) repository.getPokemon(id),
        ]).then((value) {
          state = AsyncData(state.value?.copyWith(
            previousEvolutions:
                value.firstWhereOrNull((e) => "${e?.id}" == previous),
            nextEvolutions: value
                .map((e) {
                  if (next.any((n) => "${e?.id}" == n)) {
                    return e;
                  }
                  return null;
                })
                .whereNotNull()
                .toList(),
          ));
        });
        // TODO: update the pokemon cache so that it won't be fetch next time.
      }
    }
  }

  /// to detail page
  void toDetail(Pokemon item) {
    ref.read(appRouteProvider.notifier).replace(Nav.pokemonDetail, args: {
      AppRoute.KEY_ID: item.id,
      AppRoute.KEY_ITEM: item,
    });
  }
}
