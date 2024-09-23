import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/generated/locale_keys.freezed.dart';

enum PokemonStatType {
  @JsonValue("hp")
  hp,
  @JsonValue("defense")
  defense,
  @JsonValue("attack")
  attack,
  @JsonValue("special-attack")
  specialAttack,
  @JsonValue("special-defense")
  specialDefense,
  @JsonValue("speed")
  speed,
  @JsonValue("unknown")
  unknown,
}

extension PokemonStatTypeExtension on PokemonStatType {
  String get title {
    return switch(this) {
      PokemonStatType.hp => LocaleKeys.label_pokemon_stat_hp.localize(),
      PokemonStatType.defense => LocaleKeys.label_pokemon_stat_defense.localize(),
      PokemonStatType.attack => LocaleKeys.label_pokemon_stat_attack.localize(),
      PokemonStatType.specialAttack => LocaleKeys.label_pokemon_stat_special_attack.localize(),
      PokemonStatType.specialDefense => LocaleKeys.label_pokemon_stat_special_defense.localize(),
      PokemonStatType.speed => LocaleKeys.label_pokemon_stat_speed.localize(),
      PokemonStatType.unknown => "",
    };
  }
}
