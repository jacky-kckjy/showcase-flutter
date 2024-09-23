// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpeciesDataImpl _$$PokemonSpeciesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesDataImpl(
      flavorTexts: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => PokemonFlavorTextData.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => PokemonGeneraData.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolution: PokemonUrlData.fromJson(
          json['evolution_chain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonSpeciesDataImplToJson(
        _$PokemonSpeciesDataImpl instance) =>
    <String, dynamic>{
      'flavor_text_entries': instance.flavorTexts,
      'genera': instance.genera,
      'evolution_chain': instance.evolution,
    };
