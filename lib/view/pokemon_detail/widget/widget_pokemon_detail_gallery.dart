import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/generated/locale_keys.freezed.dart';

import '../../../app/app_dimens.dart';
import '../../../generated/image_keys.g.dart';
import '../../pokemon/widget/widget_pokemon_image.dart';

class PokemonDetailGalleryWidget extends StatelessWidget {
  final List<String>? images;
  final Function(String image)? onTap;

  const PokemonDetailGalleryWidget({
    super.key,
    this.images,
    this.onTap,
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
            LocaleKeys.label_pokemon_gallery.localize(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: AppDimens.paddingLarger,
            right: AppDimens.paddingLarger,
          ),
          child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return Row(
                children: images
                        ?.mapIndexed((i, e) {
                          return [
                            Expanded(child: _buildImageItem(context, ref, e)),
                            if (i != images!.length - 1)
                              const SizedBox(width: AppDimens.paddingSmaller),
                          ];
                        })
                        .expand((e) => e)
                        .toList() ??
                    [],
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildImageItem(
    BuildContext context,
    WidgetRef ref,
    String image,
  ) {
    return Material(
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
      borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => onTap?.call(image),
        splashColor: Theme.of(context).colorScheme.inversePrimary,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            padding: const EdgeInsets.all(AppDimens.paddingSmaller),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageKeys.gradientBackround),
                fit: BoxFit.cover,
              ),
            ),
            child: PokemonImageItem(image: image),
          ),
        ),
      ),
    );
  }
}
