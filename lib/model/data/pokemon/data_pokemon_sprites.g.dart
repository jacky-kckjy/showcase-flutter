// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_sprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpritesDataImpl _$$PokemonSpritesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpritesDataImpl(
      others: PokemonOtherSpritesData.fromJson(
          json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonSpritesDataImplToJson(
        _$PokemonSpritesDataImpl instance) =>
    <String, dynamic>{
      'other': instance.others,
    };

_$PokemonOtherSpritesDataImpl _$$PokemonOtherSpritesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonOtherSpritesDataImpl(
      official: PokemonImageData.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
      dreamWorld: PokemonImageData.fromJson(
          json['dream_world'] as Map<String, dynamic>),
      home: PokemonImageData.fromJson(json['home'] as Map<String, dynamic>),
      showdown:
          PokemonImageData.fromJson(json['showdown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonOtherSpritesDataImplToJson(
        _$PokemonOtherSpritesDataImpl instance) =>
    <String, dynamic>{
      'official-artwork': instance.official,
      'dream_world': instance.dreamWorld,
      'home': instance.home,
      'showdown': instance.showdown,
    };

_$PokemonImageDataImpl _$$PokemonImageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonImageDataImpl(
      image: json['front_default'] as String,
    );

Map<String, dynamic> _$$PokemonImageDataImplToJson(
        _$PokemonImageDataImpl instance) =>
    <String, dynamic>{
      'front_default': instance.image,
    };
