// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatDataImpl _$$PokemonStatDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatDataImpl(
      value: (json['base_stat'] as num).toInt(),
      data:
          PokemonStatDetailData.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatDataImplToJson(
        _$PokemonStatDataImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.value,
      'stat': instance.data,
    };
