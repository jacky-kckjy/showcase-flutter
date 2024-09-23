import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_pokemon_language.freezed.dart';
part 'data_pokemon_language.g.dart';

@freezed
class PokemonLangData with _$PokemonLangData {
  const factory PokemonLangData({
    @JsonKey(name: "name") required String lang,
  }) = _PokemonLangData;

  factory PokemonLangData.fromJson(Map<String, Object?> data) =>
      _$PokemonLangDataFromJson(data);
}
