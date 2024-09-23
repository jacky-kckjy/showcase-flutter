import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon_stat.dart';

part 'data_pokemon_stat'
    '_detail.freezed.dart';
part 'data_pokemon_stat_detail.g.dart';

@freezed
class PokemonStatDetailData with _$PokemonStatDetailData {
  const factory PokemonStatDetailData({
    @JsonKey(name: "name", unknownEnumValue: PokemonStatType.unknown)
    required PokemonStatType stat,
  }) = _PokemonStatDetailData;

  factory PokemonStatDetailData.fromJson(Map<String, Object?> data) =>
      _$PokemonStatDetailDataFromJson(data);
}
