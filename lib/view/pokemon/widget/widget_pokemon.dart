import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:showcase_showcase_flutter/extension/extension_color.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/model/enums/type_pokemon.dart';
import 'package:showcase_showcase_flutter/view/pokemon/providers/provider_pokemon_list.dart';
import 'package:showcase_showcase_flutter/view/pokemon/widget/widget_pokemon_image.dart';
import 'package:showcase_showcase_flutter/widget/widget_image.dart';

import '../../../app/app_theme_mode.dart';
import '../../../generated/image_keys.g.dart';
import '../../../model/domain/pokemon/pokemon.dart';
import '../providers/provider_pokemon_list_style.dart';

@immutable
class PokemonItem extends ConsumerWidget {
  final Pokemon item;
  final ListStyle style;

  late ThemeMode _theme;
  late Color themeColor;

  PokemonItem({super.key, required this.item, this.style = ListStyle.grid});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _theme = ref.watch(appThemeModeProvider.notifier).themeMode;
    themeColor = item.types.first.color ?? Colors.white;
    final action =
        () => ref.read(pokemonViewModelProvider.notifier).toDetail(item);
    if (style == ListStyle.grid) {
      return _gridItem(context, ref, action);
    }
    return _listItem(context, ref, action);
  }

  Widget _gridItem(
    BuildContext context,
    WidgetRef ref,
    VoidCallback? onPressed,
  ) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: AppDimens.marginSmaller),
          decoration: BoxDecoration(
            color: (_theme == ThemeMode.light)
                ? themeColor.lighten(40)
                : themeColor.darken(40),
            borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
            border: Border.all(
              color: (_theme == ThemeMode.light)
                  ? themeColor.lighten(30)
                  : themeColor.lighten(10),
              width: 2,
            ),
            image: DecorationImage(
              image: AssetImage(ImageKeys.gradientBackround),
              fit: BoxFit.cover,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
            child: InkWell(
              onTap: onPressed,
              borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: AppDimens.paddingTiny,
                  right: AppDimens.paddingTiny,
                  top: AppDimens.paddingMedium,
                  bottom: AppDimens.paddingMedium,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 10,
                      child: Hero(
                        tag: "pokemon_${item.id}",
                        child: _image(),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: _nameTag(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        ...item.types.reversed.mapIndexed((i, e) {
          return Positioned(
            top: AppDimens.paddingTiny,
            right: AppDimens.paddingTiny +
                (item.types.length - i - 1) * AppDimens.radiusLarger * 1.2,
            child: _typeIcon(e, AppDimens.radiusLarge * 2).animate().slideY(
                  delay: Duration(milliseconds: 100 * i),
                  curve: Curves.easeInOutCubic,
                  duration: 300.ms,
                  begin: 0.5,
                  end: 0,
                ),
          );
        }),
        Align(
          alignment: Alignment.bottomCenter,
          child: _numberTag(context, item.types.first),
        ),
      ],
    );
  }

  Widget _listItem(
    BuildContext context,
    WidgetRef ref,
    VoidCallback? onPressed,
  ) {
    return Stack(
      children: [
        Material(
          color: (_theme == ThemeMode.light)
              ? themeColor.lighten(40)
              : themeColor.darken(40),
          borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
          child: InkWell(
            onTap: onPressed,
            splashColor: item.types.first.color!.withOpacity(0.4),
            borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
            child: Container(
              height: 80,
              padding: const EdgeInsets.only(
                left: AppDimens.paddingSmaller,
                right: AppDimens.paddingSmaller,
                top: AppDimens.paddingTiny,
                bottom: AppDimens.paddingTiny,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
                border: Border.all(
                  color: (_theme == ThemeMode.light)
                      ? themeColor.lighten(30)
                      : themeColor.lighten(10),
                  width: 2,
                ),
                image: DecorationImage(
                  image: AssetImage(ImageKeys.gradientBackround),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                    child: Hero(
                      tag: "pokemon_${item.id}",
                      child: _image(),
                    ),
                  ),
                  kGapSmaller,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _nameTag(context),
                      kGapText,
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: AppDimens.paddingText,
                        children: [
                          ...item.types.reversed.mapIndexed((i, e) {
                            return _typeIcon(e, AppDimens.radiusLarger)
                                .animate()
                                .slideX(
                                  delay: Duration(milliseconds: 100 * i),
                                  curve: Curves.easeInOutCubic,
                                  duration: 300.ms,
                                  begin: 0.5,
                                  end: 0,
                                );
                          })
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: AppDimens.paddingSmaller,
          right: AppDimens.paddingSmaller,
          child: _numberTag(context, item.types.first),
        ),
      ],
    );
  }

  Widget _image() {
    return PokemonImageItem(image: item.image);
  }

  Widget _typeIcon(PokemonType type, double size) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: type.color,
        boxShadow: [
          BoxShadow(
            color: (type.color ?? Colors.white).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: FractionallySizedBox(
        heightFactor: 0.6,
        child: AppImage(type.icon),
      ),
    );
  }

  Widget _nameTag(BuildContext context) {
    return Text(
      item.name.capitalizeFirstLetter(),
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: (_theme == ThemeMode.light)
              ? themeColor.darken(50)
              : themeColor.lighten(80)),
    );
  }

  Widget _numberTag(BuildContext context, PokemonType type) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingSmall,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimens.radiusLarger),
        border: Border.all(
          color: (_theme == ThemeMode.light)
              ? themeColor.lighten(30)
              : themeColor.lighten(10),
          width: 2,
        ),
      ),
      child: Text(
        "#${item.id}",
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.black,
            ),
      ),
    );
  }
}
