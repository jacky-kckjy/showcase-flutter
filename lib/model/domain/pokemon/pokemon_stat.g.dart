// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatImpl _$$PokemonStatImplFromJson(Map<String, dynamic> json) =>
    _$PokemonStatImpl(
      value: (json['value'] as num).toInt(),
      stat: $enumDecode(_$PokemonStatTypeEnumMap, json['stat']),
    );

Map<String, dynamic> _$$PokemonStatImplToJson(_$PokemonStatImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'stat': _$PokemonStatTypeEnumMap[instance.stat]!,
    };

const _$PokemonStatTypeEnumMap = {
  PokemonStatType.hp: 'hp',
  PokemonStatType.defense: 'defense',
  PokemonStatType.attack: 'attack',
  PokemonStatType.specialAttack: 'special-attack',
  PokemonStatType.specialDefense: 'special-defense',
  PokemonStatType.speed: 'speed',
  PokemonStatType.unknown: 'unknown',
};
