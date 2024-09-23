import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:showcase_showcase_flutter/generated/image_keys.g.dart';
import 'package:showcase_showcase_flutter/view/pokemon/widget/widget_pokemon_image.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/providers/provider_pokemon_detail.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/widget/widget_pokemon_detail_about.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/widget/widget_pokemon_detail_appbar.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/widget/widget_pokemon_detail_dimen.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/widget/widget_pokemon_detail_evolution.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/widget/widget_pokemon_detail_gallery.dart';
import 'package:showcase_showcase_flutter/view/pokemon_detail/widget/widget_pokemon_detail_stat.dart';
import 'package:showcase_showcase_flutter/widget/widget_loading_indicator.dart';

import '../../model/domain/pokemon/pokemon.dart';

class PokemonDetailPage extends ConsumerWidget {
  final Object? id;
  final Pokemon? initialItem;

  const PokemonDetailPage({
    super.key,
    required this.id,
    this.initialItem,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = pokemonDetailViewModelProvider(
      id.toString(),
      initialValue: initialItem,
    );
    final item = ref.watch(provider);
    return item.when(
      data: (item) {
        if (item == null) {
          return const Center(
            child: Text("Error: Pokemon not found"),
          );
        }
        return SafeArea(
          bottom: false,
          top: false,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            body: CustomScrollView(
              slivers: [
                PokemonDetailAppBar(item: item),
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainer,
                    ),
                    child: AnimatedSize(
                      alignment: Alignment.topCenter,
                      duration: 300.ms,
                      child: Column(
                        children: AnimateList(
                          interval: 50.ms,
                          effects: [
                            const FadeEffect(
                              curve: Curves.easeInOutCubic,
                              duration: Duration(milliseconds: 1000),
                            ),
                            const SlideEffect(
                              begin: Offset(0, -0.2),
                              end: Offset(0, 0.0),
                              curve: Curves.easeInOutCubic,
                              duration: Duration(milliseconds: 1000),
                            ),
                          ],
                          children: [
                            kGapSmall,
                            PokemonDetailAboutWidget(
                              texts: item.species.flavorTexts,
                            ),
                            kGapLarge,
                            PokemonDetailDimenWidget(
                              item: item.dimen,
                              genus: item.species.genus,
                            ),
                            kGapLarge,
                            PokemonDetailStatWidget(item: item),
                            kGapLarge,
                            PokemonDetailGalleryWidget(
                              images: item.gallery,
                              onTap: (image) {
                                showImagePreview(context, image);
                              },
                            ),
                            kGapLarge,
                            if (item.nextEvolutions.isNotEmpty ||
                                item.previousEvolutions != null)
                              PokemonDetailEvolutionWidget(
                                nextEvolutions: item.nextEvolutions,
                                previousEvolutions: item.previousEvolutions,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SliverFillRemaining(
                  fillOverscroll: false,
                  hasScrollBody: false,
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: AppDimens.marginLarge +
                          MediaQuery.of(context).padding.bottom,
                    ),
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (_, __) => const SizedBox.shrink(),
      loading: () => const Center(
        child: LoadingIndicator(),
      ),
    );
  }

  Future<void> showImagePreview(BuildContext context, String image) async {
    final size = MediaQuery.of(context).size.width * 0.7;
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          content: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: size,
                  child: PokemonImageItem(
                    image: image,
                    size: size,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
