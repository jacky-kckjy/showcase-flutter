import 'dart:developer';

import 'package:showcase_showcase_flutter/app/app_nav.dart';
import 'package:showcase_showcase_flutter/model/domain/api/result/api_error.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon.dart';
import 'package:showcase_showcase_flutter/repository/pokemon/repository_pokemon.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../controller/base/base_controller_pagnigation.dart';

final pokemonViewModelProvider =
    AsyncNotifierProvider<PokemonViewModel, List<Pokemon>>(() {
  return PokemonViewModel();
});

class PokemonViewModel extends AsyncNotifier<List<Pokemon>>
    with AsyncPaginationController<Pokemon, int> {
  late final repository = ref.read(pokemonRepositoryProvider);

  bool _canLoadMore = true;
  String? _lastSearch;

  @override
  int get initialPage => 0;

  @override
  bool get canLoadMore => _canLoadMore && _lastSearch == null;

  // TODO: cache data

  @override
  FutureOr<List<Pokemon>> build() {
    state = AsyncData(List.filled(10, Pokemon.initial()));
    return super.build();
  }

  @override
  FutureOr<List<Pokemon>> loadPage(int page) async {
    log('loadPage: $page', name: "pokemon");
    final result = await repository.getPokemonList(page);
    if (result is ApiError?) {
      state = AsyncError(result, StackTrace.fromString(""));
      return [];
    }
    _canLoadMore = result.isNotEmpty;
    log('canLoadMore: $_canLoadMore', name: "pokemon");
    log('items: ${result.length}', name: "pokemon");
    return result;
  }

  @override
  int nextPage(int currentPage) => currentPage + 1;

  Future<void> refresh() async {
    if (_lastSearch != null) {
      return;
    }
    currentPage = initialPage;
    // initial item for skeleton
    state = AsyncData(List.filled(10, Pokemon.initial()));
    // loading the first page
    final result = await loadPage(0);
    state = AsyncData<List<Pokemon>>(result);
  }

  /// search pokemon by name / id
  Future<void> search(String name) async {
    if (name.isEmpty) {
      _lastSearch = null;
      return refresh();
    }
    _lastSearch = name;
    currentPage = initialPage;
    state = const AsyncLoading<List<Pokemon>>();
    final item = await repository.getPokemon(name);
    if (item is Pokemon) {
      // replace the searched pokemon to the list
      state = AsyncData<List<Pokemon>>([item]);
    } else {
      // clear the list if no pokemon
      state = const AsyncData<List<Pokemon>>([]);
    }
  }

  /// to detail page
  void toDetail(Pokemon item) {
    ref.read(appRouteProvider.notifier).navigate(Nav.pokemonDetail, args: {
      AppRoute.KEY_ID: item.id,
      AppRoute.KEY_ITEM: item,
    });
  }
}
