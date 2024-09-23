// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_results_pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResultsDataImpl _$$PokemonResultsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonResultsDataImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonUrlData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonResultsDataImplToJson(
        _$PokemonResultsDataImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
