// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_stat_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatDetailDataImpl _$$PokemonStatDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatDetailDataImpl(
      stat: $enumDecode(_$PokemonStatTypeEnumMap, json['name'],
          unknownValue: PokemonStatType.unknown),
    );

Map<String, dynamic> _$$PokemonStatDetailDataImplToJson(
        _$PokemonStatDetailDataImpl instance) =>
    <String, dynamic>{
      'name': _$PokemonStatTypeEnumMap[instance.stat]!,
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
