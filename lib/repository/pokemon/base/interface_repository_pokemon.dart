import 'package:showcase_showcase_flutter/model/data/pokemon/evolve/data_pokemon_evolve_group.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/species/data_pokemon_species.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemonList(int page);

  Future<Pokemon?> getPokemon(String name);

  Future<PokemonSpeciesData?> getPokemonSpecies(String name);

  Future<PokemonEvolveGroupData?> getPokemonEvolution(String name);
}
