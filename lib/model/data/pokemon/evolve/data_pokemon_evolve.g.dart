// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_evolve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonEvolveDataImpl _$$PokemonEvolveDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonEvolveDataImpl(
      evolveFrom: (json['evolution_details'] as List<dynamic>)
          .map((e) =>
              PokemonEvolveDetailData.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolveTo: (json['evolves_to'] as List<dynamic>)
          .map((e) => PokemonEvolveData.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: PokemonUrlData.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonEvolveDataImplToJson(
        _$PokemonEvolveDataImpl instance) =>
    <String, dynamic>{
      'evolution_details': instance.evolveFrom,
      'evolves_to': instance.evolveTo,
      'species': instance.species,
    };
