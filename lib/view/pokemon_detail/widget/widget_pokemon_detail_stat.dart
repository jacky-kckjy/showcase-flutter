import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/extension/extension_animation.dart';
import 'package:showcase_showcase_flutter/extension/extension_color.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon_stat.dart';

import '../../../app/app_dimens.dart';
import '../../../model/domain/pokemon/pokemon.dart';
import '../../../model/domain/pokemon/pokemon_stat.dart';

class PokemonDetailStatWidget extends ConsumerWidget {
  PokemonDetailStatWidget({
    super.key,
    required this.item,
  });

  final Pokemon item;

  late Color _themeColor;

  final _maxValue = 150;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _themeColor = item.types.first.color ?? Colors.white;

    final maxValue = item.stats.map((e) => e.value).reduce(max);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingLarger,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...item.stats.mapIndexed((i, e) {
            return _buildStatItem(
              context,
              stat: e,
              index: 1,
              highlight: maxValue == e.value,
              maxValue: _maxValue,
            );
          }),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context, {
    required PokemonStat stat,
    required int index,
    required int maxValue,
    bool highlight = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDimens.paddingSmaller),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              stat.stat.title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.8),
                  ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              stat.value.toString(),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.95),
                  ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              alignment: Alignment.centerLeft,
              height: AppDimens.radiusSmall,
              clipBehavior: (highlight) ? Clip.none : Clip.hardEdge,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.8),
                borderRadius: BorderRadius.circular(AppDimens.radiusSmall),
              ),
              child: Animate().valueChange(
                begin: 0,
                end: min(stat.value / maxValue, 1),
                delay: Duration(milliseconds: 500 + index * 100),
                builder: (context, value, child) {
                  return FractionallySizedBox(
                    widthFactor: value,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          if (highlight)
                            BoxShadow(
                              color: _themeColor.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                            ),
                        ],
                        color: (highlight)
                            ? _themeColor.lighten(10)
                            : Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer
                                .withOpacity(0.5),
                        borderRadius:
                            BorderRadius.circular(AppDimens.radiusSmall),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
