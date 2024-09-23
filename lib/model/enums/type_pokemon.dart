import 'dart:ui';

import 'package:showcase_showcase_flutter/generated/icon_keys.g.dart';
import 'package:showcase_showcase_flutter/generated/image_keys.g.dart';

enum PokemonType {
  normal,
  fighting,
  flying,
  poison,
  ground,
  rock,
  bug,
  ghost,
  steel,
  fire,
  water,
  grass,
  electric,
  psychic,
  ice,
  dragon,
  dark,
  fairy,
  stellar,
  unknown,
}

extension PokemonTypeExtension on PokemonType {
  String get icon {
    switch (this) {
      case PokemonType.normal:
        return IconKeys.normal;
      case PokemonType.fighting:
        return IconKeys.fighting;
      case PokemonType.flying:
        return IconKeys.flying;
      case PokemonType.poison:
        return IconKeys.poison;
      case PokemonType.ground:
        return IconKeys.ground;
      case PokemonType.rock:
        return IconKeys.rock;
      case PokemonType.bug:
        return IconKeys.bug;
      case PokemonType.ghost:
        return IconKeys.ghost;
      case PokemonType.steel:
        return IconKeys.steel;
      case PokemonType.fire:
        return IconKeys.fire;
      case PokemonType.water:
        return IconKeys.water;
      case PokemonType.grass:
        return IconKeys.grass;
      case PokemonType.electric:
        return IconKeys.electric;
      case PokemonType.psychic:
        return IconKeys.psychic;
      case PokemonType.ice:
        return IconKeys.ice;
      case PokemonType.dragon:
        return IconKeys.dragon;
      case PokemonType.dark:
        return IconKeys.dark;
      case PokemonType.fairy:
        return IconKeys.fairy;
      case PokemonType.stellar:
        return ImageKeys.stellar;
      default:
        return "";
    }
  }

   Color? get color {
     switch (this) {
      case PokemonType.normal:
        return const Color(0xFFA0A29F);
      case PokemonType.fighting:
        return const Color(0xFFD3425F);
      case PokemonType.flying:
        return const Color(0xFFA1BBEC);
      case PokemonType.poison:
        return const Color(0xFFB763CF);
      case PokemonType.ground:
        return const Color(0xFFDA7C4D);
      case PokemonType.rock:
        return const Color(0xFFC9BB8A);
      case PokemonType.bug:
        return const Color(0xFF92BC2C);
      case PokemonType.ghost:
        return const Color(0xFF5F6DBC);
      case PokemonType.steel:
        return const Color(0xFF5695A3);
      case PokemonType.fire:
        return const Color(0xFFFBA54C);
      case PokemonType.water:
        return const Color(0xFF539DDF);
      case PokemonType.grass:
        return const Color(0xFF5FBD58);
      case PokemonType.electric:
        return const Color(0xFFF2D94E);
      case PokemonType.psychic:
        return const Color(0xFFFA8581);
      case PokemonType.ice:
        return const Color(0xFF75D0C1);
      case PokemonType.dragon:
        return const Color(0xFF0C69C8);
      case PokemonType.dark:
        return const Color(0xFF595761);
      case PokemonType.fairy:
        return const Color(0xFFEE90E6);
      default:
        return null;
    }
   }
}

