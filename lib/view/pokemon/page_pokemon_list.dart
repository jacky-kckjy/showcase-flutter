import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:showcase_showcase_flutter/app/app_theme_mode.dart';
import 'package:showcase_showcase_flutter/extension/extension_shimmer.dart';
import 'package:showcase_showcase_flutter/extension/extension_type.dart';
import 'package:showcase_showcase_flutter/generated/image_keys.g.dart';
import 'package:showcase_showcase_flutter/model/domain/api/result/api_error.dart';
import 'package:showcase_showcase_flutter/model/domain/api/result/api_response_type.dart';
import 'package:showcase_showcase_flutter/model/domain/pokemon/pokemon.dart';
import 'package:showcase_showcase_flutter/view/pokemon/providers/provider_pokemon_list.dart';
import 'package:showcase_showcase_flutter/view/pokemon/providers/provider_pokemon_list_style.dart';
import 'package:showcase_showcase_flutter/view/pokemon/widget/widget_pokemon.dart';
import 'package:showcase_showcase_flutter/view/pokemon/widget/widget_pokemon_empty.dart';
import 'package:showcase_showcase_flutter/view/pokemon/widget/widget_pokemon_search_bar.dart';
import 'package:showcase_showcase_flutter/widget/utils/util_pull_to_refresh.dart';
import 'package:showcase_showcase_flutter/widget/widget_loading_indicator.dart';

import '../../generated/locale_keys.freezed.dart';
import '../../widget/widget_image.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<StatefulWidget> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final state = ref.read(pokemonViewModelProvider.notifier);
        ref.listen(pokemonViewModelProvider, (_, state) {
          if (!state.isLoading && state.hasError) {
            final error = state.error as ApiError?;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Error: ${ApiResponseType.fromCode(error?.statusCode ?? -1)}\n",
                ),
              ),
            );
          }
        });
        final itemsState = ref.watch(pokemonViewModelProvider);
        final themeProvider = ref.watch(appThemeModeProvider.notifier);
        final styleProvider = ref.watch(listStyleProvider.notifier);

        Image.asset(
          ImageKeys.pokeball,
          fit: BoxFit.cover,
          color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
        );
        return PopScope(
          canPop: false,
          child: SafeArea(
            top: false,
            bottom: false,
            child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
                title: Text(
                  LocaleKeys.nav_pokemon_list.localize(),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(left: AppDimens.paddingMedium),
                  child: AppImage(ImageKeys.logo),
                ),
                actions: [
                  if (itemsState.isLoading)
                    const LoadingIndicator(size: AppDimens.iconMedium),
                  IconButton(
                    onPressed: () {
                      styleProvider.toggleListStyle();
                    },
                    icon: (styleProvider.listStyle == ListStyle.grid)
                        ? const Icon(Icons.view_list)
                        : const Icon(Icons.grid_view),
                  ),
                  IconButton(
                    onPressed: () {
                      themeProvider.toggleThemeMode();
                    },
                    icon: (themeProvider.themeMode == ThemeMode.light)
                        ? const Icon(Icons.dark_mode)
                        : const Icon(Icons.light_mode),
                  ),
                  kGapTiny,
                ],
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDimens.paddingSmaller,
                        ),
                        child: PokemonSearchBar(),
                      ),
                      Divider(height: 1),
                    ],
                  ),
                ),
                automaticallyImplyLeading: false,
              ),
              body: NotificationListener(
                onNotification: (ScrollNotification scrollInfo) {
                  // loading more data when scroll reaches the bottom
                  if (scrollInfo is ScrollEndNotification &&
                      scrollInfo.metrics.axisDirection == AxisDirection.down &&
                      scrollInfo.metrics.pixels >=
                          scrollInfo.metrics.maxScrollExtent - 200) {
                    log('${state.canLoadMore}', name: "pokemon");
                    if (state.canLoadMore) {
                      state.loadNextPage();
                    }
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: FractionalTranslation(
                        translation: const Offset(-0.2, 0.2),
                        child: Image.asset(
                          ImageKeys.pokeball,
                          fit: BoxFit.cover,
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer
                              .withOpacity(0.5),
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    CustomScrollView(
                      physics: const PullToRefreshScrollPhysic(),
                      slivers: [
                        PullToRefreshWidget(
                          onRefresh: () async {
                            await state.refresh();
                          },
                        ),
                        ...items(
                          context,
                          ref,
                          themeProvider.themeMode,
                          styleProvider.listStyle,
                          itemsState,
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: MediaQuery.of(context).padding.bottom +
                                AppDimens.paddingSmaller,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// widgets for the list of pokemon
  List<Widget> items(
    BuildContext context,
    WidgetRef ref,
    ThemeMode themeMode,
    ListStyle style,
    AsyncValue<List<Pokemon>> state,
  ) {
    final items = state.valueOrNull ?? [];
    final loadingMore = state.isLoading && items.isNotEmpty;

    log('total items: ${items.length}', name: "pokemon");
    return items.isEmpty
        ? [
            const SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: PokemonEmptyWidget(),
            )
          ]
        : [
            SliverPadding(
              padding: const EdgeInsets.all(AppDimens.paddingLarge),
              sliver: style == ListStyle.grid
                  ? _gridView(context, ref, themeMode, state)
                  : _listView(context, ref, themeMode, state),
            ),
            if (loadingMore)
              // loading indicator at the bottom when loading more data
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(AppDimens.paddingMedium),
                  child: Center(
                    child: LoadingIndicator(size: AppDimens.iconLarger),
                  ),
                ),
              )
          ];
  }

  Widget _listView(
    BuildContext context,
    WidgetRef ref,
    ThemeMode themeMode,
    AsyncValue<List<Pokemon>> state,
  ) {
    final items = state.valueOrNull ?? [];
    return SliverFixedExtentList(
      key: ValueKey(items.length),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = items[index];
          return IgnorePointer(
            ignoring: item.id == -1,
            child: PokemonItem(
              key: ValueKey(item.id),
              style: ref.watch(listStyleProvider.notifier).listStyle,
              item: item,
            ).shimmer(
              item.id == -1,
              themeMode: themeMode,
            ),
          );
        },
        childCount: items.length,
      ),
      itemExtent: 80 + AppDimens.paddingTiny,
    );
  }

  Widget _gridView(
    BuildContext context,
    WidgetRef ref,
    ThemeMode themeMode,
    AsyncValue<List<Pokemon>> state,
  ) {
    final items = state.valueOrNull ?? [];
    return SliverGrid(
      key: ValueKey(items.length),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppDimens.paddingLarge,
        mainAxisSpacing: AppDimens.paddingSmaller,
        childAspectRatio: 0.85,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = items[index];
          return IgnorePointer(
            ignoring: item.id == -1,
            child: PokemonItem(
              key: ValueKey(item.id),
              style: ref.watch(listStyleProvider.notifier).listStyle,
              item: item,
            ).shimmer(
              item.id == -1,
              themeMode: themeMode,
            ),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
