import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/view/pokemon/providers/provider_pokemon_list.dart';

import '../../../app/app_dimens.dart';
import '../../../generated/locale_keys.freezed.dart';

class PokemonSearchBar extends ConsumerStatefulWidget {
  const PokemonSearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PokemonSearchBarState();
}

class _PokemonSearchBarState extends ConsumerState<PokemonSearchBar> {
  TextEditingController? _controller;
  bool _hasText = false;
  String _text = "";

  void initiateRequest(String value) {
    ref.read(pokemonViewModelProvider.notifier).search(value);
  }

  @override
  Widget build(BuildContext context) {
    _controller = TextEditingController()
      ..addListener(() {
        _text = _controller!.text;
        _hasText = _controller!.text.isNotEmpty;
      });
    return TextFormField(
      controller: _controller?..text = _text,
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (value) {
        initiateRequest(value);
        setState(() {});
      },
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
        hintText: LocaleKeys.label_search_bar.localize(),
        contentPadding: const EdgeInsets.all(AppDimens.paddingSmall),
        prefixIcon: const Icon(Icons.search),
        border: const UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
        suffixIcon: (_hasText)
            ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  _controller!.clear();
                  FocusScope.of(context).unfocus();
                  initiateRequest("");
                },
              )
            : null,
      ),
    );
  }
}
