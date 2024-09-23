import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/generated/locale_keys.freezed.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon_dimen.dart';

class PokemonDetailDimenWidget extends ConsumerWidget {
  const PokemonDetailDimenWidget({
    super.key,
    required this.item,
    required this.genus,
  });

  final PokemonDimen item;
  final String genus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingMedium,
        vertical: AppDimens.paddingMedium,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimens.marginLarger,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
        borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: _buildDimenItem(
                  context,
                  "${NumberFormat("#,###.#").format(item.weight)} kg",
                  LocaleKeys.label_pokemon_about_weight.localize(),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: AppDimens.paddingSmaller,
                ),
                width: 2,
                height: 30,
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
              ),
              Expanded(
                flex: 1,
                child: _buildDimenItem(
                  context,
                  "${NumberFormat("#,###.#").format(item.height)} m",
                  LocaleKeys.label_pokemon_about_height.localize(),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: AppDimens.paddingSmaller,
                ),
                width: 2,
                height: 30,
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
              ),
              Expanded(
                flex: 1,
                child: _buildDimenItem(
                  context,
                  genus.replaceAll(" Pokémon", ""),
                  LocaleKeys.label_pokemon_about_category.localize(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDimenItem(
    BuildContext context,
    String upper,
    String lower,
  ) {
    return Column(
      children: [
        Text(
          upper,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8)),
        ),
        kGapText,
        Text(
          lower,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8)),
        ),
      ],
    );
  }
}
