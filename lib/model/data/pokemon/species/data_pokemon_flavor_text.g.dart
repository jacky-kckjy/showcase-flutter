// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_pokemon_flavor_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonFlavorTextDataImpl _$$PokemonFlavorTextDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonFlavorTextDataImpl(
      text: json['flavor_text'] as String,
      lang: PokemonLangData.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonFlavorTextDataImplToJson(
        _$PokemonFlavorTextDataImpl instance) =>
    <String, dynamic>{
      'flavor_text': instance.text,
      'language': instance.lang,
    };
