// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_genus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonGeneraDataImpl _$$PokemonGeneraDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonGeneraDataImpl(
      name: json['genus'] as String,
      lang: PokemonLangData.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonGeneraDataImplToJson(
        _$PokemonGeneraDataImpl instance) =>
    <String, dynamic>{
      'genus': instance.name,
      'language': instance.lang,
    };
