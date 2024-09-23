import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/type_pokemon.dart';

part 'data_pokemon_type_detail.freezed.dart';
part 'data_pokemon_type_detail.g.dart';

@freezed
class PokemonTypeDetailData with _$PokemonTypeDetailData {
  const factory PokemonTypeDetailData({
    @JsonKey(name: "name") required PokemonType type,
  }) = _PokemonTypeDetailData;

  factory PokemonTypeDetailData.fromJson(Map<String, Object?> data) =>
      _$PokemonTypeDetailDataFromJson(data);
}