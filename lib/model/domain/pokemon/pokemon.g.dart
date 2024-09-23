// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      id: (json['id'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      gallery:
          (json['gallery'] as List<dynamic>).map((e) => e as String).toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PokemonTypeEnumMap, e))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      dimen: PokemonDimen.fromJson(json['dimen'] as Map<String, dynamic>),
      species: PokemonSpecies.fromJson(json['species'] as Map<String, dynamic>),
      nextEvolutions: (json['nextEvolutions'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
      previousEvolutions: json['previousEvolutions'] == null
          ? null
          : Pokemon.fromJson(
              json['previousEvolutions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'name': instance.name,
      'image': instance.image,
      'gallery': instance.gallery,
      'types': instance.types.map((e) => _$PokemonTypeEnumMap[e]!).toList(),
      'stats': instance.stats,
      'dimen': instance.dimen,
      'species': instance.species,
      'nextEvolutions': instance.nextEvolutions,
      'previousEvolutions': instance.previousEvolutions,
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
