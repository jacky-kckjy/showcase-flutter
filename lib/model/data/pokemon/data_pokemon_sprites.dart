import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_pokemon_sprites.freezed.dart';
part 'data_pokemon_sprites.g.dart';

@freezed
class PokemonSpritesData with _$PokemonSpritesData {
  const factory PokemonSpritesData({
    @JsonKey(name: "other") required PokemonOtherSpritesData others,
  }) = _PokemonSpritesData;

  factory PokemonSpritesData.fromJson(Map<String, Object?> data) =>
      _$PokemonSpritesDataFromJson(data);
}

@freezed
class PokemonOtherSpritesData with _$PokemonOtherSpritesData {
  const factory PokemonOtherSpritesData({
    @JsonKey(name: "official-artwork") required PokemonImageData official,
    @JsonKey(name: "dream_world") required PokemonImageData dreamWorld,
    @JsonKey(name: "home") required PokemonImageData home,
    @JsonKey(name: "showdown") required PokemonImageData showdown,
  }) = _PokemonOtherSpritesData;

  factory PokemonOtherSpritesData.fromJson(Map<String, Object?> data) =>
      _$PokemonOtherSpritesDataFromJson(data);
}

@freezed
class PokemonImageData with _$PokemonImageData {
  const factory PokemonImageData({
    @JsonKey(name: "front_default") required String image,
  }) = _PokemonImageData;

  factory PokemonImageData.fromJson(Map<String, Object?> data) =>
      _$PokemonImageDataFromJson(data);
}