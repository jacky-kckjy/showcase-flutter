import 'dart:developer';

import 'package:showcase_showcase_flutter/api/handler_api_response.dart';
import 'package:showcase_showcase_flutter/extension/extension_pokemon.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/evolve/data_pokemon_evolve_group.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/species/data_pokemon_species.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../api/api_interface.dart';
import '../../api/base/interface_api_client.dart';
import '../../app/app_startup.dart';
import '../../model/domain/api/result/api_status.dart';
import '../../model/domain/pokemon/pokemon.dart';
import 'base/interface_repository_pokemon.dart';

part 'repository_pokemon.g.dart';

@Riverpod(keepAlive: true)
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) {
  return PokemonRepositoryImpl(ref.watch(apiClientProvider));
}

class PokemonRepositoryImpl implements PokemonRepository {
  final ApiClient<ApiInterface> apiClient;
  final int _limit = 20;

  PokemonRepositoryImpl(this.apiClient);

  @override
  Future<List<Pokemon>> getPokemonList(int page) async {
    final result =
        await apiClient.service.getPokemonList(_limit, _limit * page).call();
    if (result.status == ApiStatus.error) {
      return Future.error(result.error!);
    }
    return await Future.wait(result.data?.results.map((e) async {
          final uri = Uri.parse(e.url);
          final id = uri.pathSegments[uri.pathSegments.length - 2];
          final result = await apiClient.service.getPokemonDetail(id).call();
          return result.data!.convert();
        }).toList() ??
        []);
  }

  @override
  Future<Pokemon?> getPokemon(String name) async {
    final result =
        await apiClient.service.searchPokemon(name.toLowerCase()).call();
    if (result.status == ApiStatus.error) {
      return null;
    }
    final detail =
        (await apiClient.service.getPokemonDetail(name.toLowerCase()).call())
            .data!;
    final species =
        (await apiClient.service.getPokemonSpecies(name.toLowerCase()).call())
            .data!;
    return detail.convert(species: species).copyWith();
  }

  @override
  Future<PokemonSpeciesData?> getPokemonSpecies(String name) async {
    final result =
        await apiClient.service.getPokemonSpecies(name.toLowerCase()).call();
    if (result.status == ApiStatus.error) {
      return null;
    }
    return result.data!;
  }

  @override
  Future<PokemonEvolveGroupData?> getPokemonEvolution(String name) async  {
    final result =
        await apiClient.service.getPokemonEvolution(name.toLowerCase()).call();
    if (result.status == ApiStatus.error) {
      return null;
    }
    return result.data!;
  }
}
