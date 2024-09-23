import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/extension/extension_shimmer.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/generated/locale_keys.freezed.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/providers/provider_pokemon_detail.dart';

import '../../../app/app_dimens.dart';
import '../../../generated/image_keys.g.dart';
import '../../pokemon/widget/widget_pokemon_image.dart';

class PokemonDetailEvolutionWidget extends StatelessWidget {
  final List<Pokemon>? nextEvolutions;
  final Pokemon? previousEvolutions;

  const PokemonDetailEvolutionWidget({
    super.key,
    this.nextEvolutions,
    this.previousEvolutions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: AppDimens.paddingTiny,
            left: AppDimens.paddingLarger,
            right: AppDimens.paddingLarger,
            bottom: AppDimens.paddingSmaller,
          ),
          child: Text(
            LocaleKeys.label_pokemon_evolution.localize(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SingleChildScrollView(
          key: ValueKey(
              "loaded_evolution_${nextEvolutions?.any((e) => e.id == -1)}"),
          padding: const EdgeInsets.only(
            left: AppDimens.paddingLarger,
            right: AppDimens.paddingLarger,
          ),
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return Wrap(
                direction: Axis.horizontal,
                spacing: AppDimens.paddingSmall,
                children: AnimateList(
                  interval: 100.ms,
                  effects: [
                    const FadeEffect(
                      curve: Curves.easeInOutCubic,
                      duration: Duration(milliseconds: 500),
                    ),
                    const SlideEffect(
                      begin: Offset(-0.2, 0.0),
                      end: Offset(0, 0.0),
                      curve: Curves.easeInOutCubic,
                      duration: Duration(milliseconds: 500),
                    ),
                  ],
                  children: [
                    if (previousEvolutions != null)
                      _buildEvolutionItem(
                        context,
                        ref,
                        previousEvolutions!,
                        false,
                      ),
                    if (nextEvolutions != null)
                      ...nextEvolutions!.map((e) {
                        return _buildEvolutionItem(
                          context,
                          ref,
                          e,
                          true,
                        ).shimmer(e.id == -1);
                      }),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildEvolutionItem(
    BuildContext context,
    WidgetRef ref,
    Pokemon item,
    bool nextEvolution,
  ) {
    return Material(
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
      borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.inversePrimary,
        onTap: (item.id != -1)
            ? () {
                ref
                    .read(pokemonDetailViewModelProvider
                        .call(
                          item.id.toString(),
                          initialValue: item,
                        )
                        .notifier)
                    .toDetail(item);
              }
            : null,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageKeys.gradientBackround),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingMedium,
                vertical: AppDimens.paddingMedium,
              ),
              child: PokemonImageItem(image: item.image),
            ),
            if (!nextEvolution)
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppDimens.paddingText,
                    horizontal: AppDimens.paddingSmall,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "←",
                        style:
                            Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                      ),
                      kGapText,
                      Text(
                        LocaleKeys.label_pokemon_evolution_previous.localize(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            if (nextEvolution)
              Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppDimens.paddingText,
                    horizontal: AppDimens.paddingSmall,
                  ),
                  child: Row(
                    children: [
                      Text(
                        LocaleKeys.label_pokemon_evolution_next.localize(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                      ),
                      kGapText,
                      Text(
                        "→",
                        style:
                            Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
