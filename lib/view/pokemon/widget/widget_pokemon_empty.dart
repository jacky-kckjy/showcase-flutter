import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/generated/image_keys.g.dart';
import 'package:showcase_showcase_flutter/generated/locale_keys.freezed.dart';

import '../../../widget/widget_image.dart';

class PokemonEmptyWidget extends StatelessWidget {
  const PokemonEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.withOpacity(0.5),
            backgroundBlendMode: BlendMode.saturation,
          ),
          child:  AppImage(
            ImageKeys.logo,
            size: AppDimens.iconExtraLarge,
          ),
        ),
        kGapSmall,
        Text(
          LocaleKeys.alert_empty_list.localize(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        kGapExtraLarge,
      ],
    );
  }
}
