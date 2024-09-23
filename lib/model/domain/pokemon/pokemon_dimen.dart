import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon.dart';

import '../../enums/type_pokemon_stat.dart';

part 'pokemon_dimen.freezed.dart';
part 'pokemon_dimen.g.dart';

@freezed
class PokemonDimen with _$PokemonDimen {
  const factory PokemonDimen({
    required double height,
    required double weight,
  }) = _PokemonDimen;

  factory PokemonDimen.initial() => const PokemonDimen(
        height: 0,
        weight: 0,
      );
  
  factory PokemonDimen.fromJson(Map<String, Object?> data) =>
      _$PokemonDimenFromJson(data);
}
