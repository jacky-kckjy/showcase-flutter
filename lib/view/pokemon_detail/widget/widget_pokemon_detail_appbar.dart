import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/extension/extension_color.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon.dart';

import '../../../app/app_dimens.dart';
import '../../../app/app_theme_mode.dart';
import '../../../generated/image_keys.g.dart';
import '../../../model/domain/pokemon/pokemon.dart';
import '../../../widget/widget_image.dart';
import '../../pokemon/widget/widget_pokemon_image.dart';

class PokemonDetailAppBar extends ConsumerWidget {
  PokemonDetailAppBar({
    super.key,
    required this.item,
  });

  final Pokemon item;

  late Color _themeColor;
  late ThemeMode _themeMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _themeMode = ref.watch(appThemeModeProvider.notifier).themeMode;
    _themeColor = item.types.first.color ?? Colors.white;
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.width * 0.8,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageKeys.gradientBackround),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                ),
                color: (_themeMode == ThemeMode.light)
                    ? _themeColor.lighten(40)
                    : _themeColor.darken(40),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  FractionallySizedBox(
                    heightFactor: 0.4,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            _themeColor.darken(30).withOpacity(0.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  PreferredSize(
                    preferredSize: Size.fromHeight(AppDimens.radiusExtraLarge),
                    child: Container(
                      height: AppDimens.radiusExtraLarge,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 2,
                            color:
                                Theme.of(context).colorScheme.surfaceContainer,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppDimens.radiusExtraLarge),
                          topRight: Radius.circular(AppDimens.radiusExtraLarge),
                        ),
                      ),
                    ),
                  ),
                  FractionalTranslation(
                    translation: const Offset(0.2, 0.03),
                    child: Hero(
                      tag: "pokemon_${item.id}",
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top),
                        child: _image(item),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: kToolbarHeight +
                            MediaQuery.of(context).padding.top +
                            AppDimens.paddingTiny,
                        left: AppDimens.paddingLarger,
                        right: AppDimens.paddingLarger,
                      ),
                      child: FittedBox(
                        child: _types(context, item),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppDimens.paddingExtraLarge,
                        left: AppDimens.paddingLarger,
                        right: AppDimens.paddingLarger,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _numberTag(context),
                          _nameTag(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _numberTag(BuildContext context) {
    return Text(
      "#${item.id}",
      maxLines: 1,
      style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colors.white.withOpacity(0.8),
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _nameTag(BuildContext context) {
    return Text(
      item.name.toUpperCase(),
      maxLines: 1,
      style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colors.white.withOpacity(0.8),
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _image(Pokemon item) {
    return PokemonImageItem(image: item.image);
  }

  Widget _types(BuildContext context, Pokemon item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...item.types.mapIndexed((i, e) {
          return Container(
            margin: const EdgeInsets.only(bottom: AppDimens.paddingTiny),
            height: AppDimens.radiusMedium * 2,
            padding: const EdgeInsets.only(
              left: AppDimens.paddingText,
              right: AppDimens.paddingSmaller,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
              color: e.color,
              boxShadow: [
                BoxShadow(
                  color: (e.color ?? Colors.white).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: FractionallySizedBox(
                    heightFactor: 0.6,
                    child: AppImage(e.icon),
                  ),
                ),
                kGapText,
                Padding(
                  padding: const EdgeInsets.only(top: AppDimens.paddingText),
                  child: Text(
                    e.name.capitalizeFirstLetter(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                )
              ],
            ),
          ).animate().scale(
                delay: Duration(milliseconds: 300 + 100 * i),
                curve: Curves.easeInOutCubic,
                duration: 300.ms,
              );
        }),
      ],
    );
  }
}
