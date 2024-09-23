import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon.dart';

import '../../enums/type_pokemon_stat.dart';

part 'pokemon_stat.freezed.dart';
part 'pokemon_stat.g.dart';

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    required int value,
    required PokemonStatType stat,
  }) = _PokemonStat;
  
  factory PokemonStat.fromJson(Map<String, Object?> data) =>
      _$PokemonStatFromJson(data);
}
