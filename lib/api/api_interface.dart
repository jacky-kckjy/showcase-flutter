import 'package:dio/dio.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_pokemon.dart';
import 'package:showcase_showcase_flutter/model/data/pokemon/data_results_pokemon.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../model/data/pokemon/evolve/data_pokemon_evolve_group.dart';
import '../model/data/pokemon/species/data_pokemon_species.dart';

part 'api_interface.g.dart';

/// execute "dart run build_runner build --delete-conflicting-outputs" in terminal to refresh usage
@RestApi(baseUrl: "")
abstract class ApiInterface {
  factory ApiInterface(Dio dio, {String baseUrl}) = _ApiInterface;

  @GET("pokemon")
  Future<PokemonResultsData> getPokemonList(
    @Query("limit") int limit,
    @Query("offset") int offset,
  );

  @GET("pokemon/{id}")
  Future<PokemonData> getPokemonDetail(@Path("id") String id);

  @GET("pokemon/{name}")
  Future<PokemonData> searchPokemon(@Path("name") String name);

  @GET("pokemon-species/{name}")
  Future<PokemonSpeciesData> getPokemonSpecies(@Path("name") String name);

  @GET("evolution-chain/{name}")
  Future<PokemonEvolveGroupData> getPokemonEvolution(@Path("name") String name);
}
