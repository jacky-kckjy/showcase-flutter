// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_type_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeDetailDataImpl _$$PokemonTypeDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeDetailDataImpl(
      type: $enumDecode(_$PokemonTypeEnumMap, json['name']),
    );

Map<String, dynamic> _$$PokemonTypeDetailDataImplToJson(
        _$PokemonTypeDetailDataImpl instance) =>
    <String, dynamic>{
      'name': _$PokemonTypeEnumMap[instance.type]!,
    };

const _$PokemonTypeEnumMap = {
  PokemonType.normal: 'normal',
  PokemonType.fighting: 'fighting',
  PokemonType.flying: 'flying',
  PokemonType.poison: 'poison',
  PokemonType.ground: 'ground',
  PokemonType.rock: 'rock',
  PokemonType.bug: 'bug',
  PokemonType.ghost: 'ghost',
  PokemonType.steel: 'steel',
  PokemonType.fire: 'fire',
  PokemonType.water: 'water',
  PokemonType.grass: 'grass',
  PokemonType.electric: 'electric',
  PokemonType.psychic: 'psychic',
  PokemonType.ice: 'ice',
  PokemonType.dragon: 'dragon',
  PokemonType.dark: 'dark',
  PokemonType.fairy: 'fairy',
  PokemonType.stellar: 'stellar',
  PokemonType.unknown: 'unknown',
};
