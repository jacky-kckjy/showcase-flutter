import 'dart:math';

import 'package:flutter/material.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:showcase_showcase_flutter/extension/extension_shimmer.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';

import '../../../generated/locale_keys.freezed.dart';

class PokemonDetailAboutWidget extends StatefulWidget {
  final List<String> texts;

  const PokemonDetailAboutWidget({super.key, required this.texts});

  @override
  _PokemonDetailAboutWidgetState createState() =>
      _PokemonDetailAboutWidgetState();
}

class _PokemonDetailAboutWidgetState extends State<PokemonDetailAboutWidget> {
  String _text = "";
  final Random _random = Random();

  @override
  void initState() {
    super.initState();

    if (widget.texts.isEmpty) {
      return;
    }
    _text = widget.texts[_random.nextInt(widget.texts.length)];
  }

  @override
  void didUpdateWidget(covariant PokemonDetailAboutWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.texts.isEmpty || _text.isNotEmpty) {
      return;
    }
    setState(() {
      _text = widget.texts[_random.nextInt(widget.texts.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_text.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.paddingLarger,
        ),
        child: Column(
          children: [
            Text(
              "",
              style: Theme.of(context).textTheme.bodyLarge,
            ).shimmer(true, width: 0.8),
            kGapTiny,
            Text(
              "",
              style: Theme.of(context).textTheme.bodyLarge,
            ).shimmer(true)
          ],
        ),
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppDimens.paddingLarger,
            right: AppDimens.paddingLarger,
            bottom: AppDimens.paddingTiny,
          ),
          child: Text(
            LocaleKeys.label_pokemon_about.localize(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.paddingLarger,
          ),
          child: Text(
            _text.replaceAll("\n", ""),
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
