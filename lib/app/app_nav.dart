import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/domain/pokemon/pokemon.dart';
import '../view/main/page_splash.dart';
import '../view/pokemon/page_pokemon_list.dart';
import '../view/pokemon_detail/page_pokemon_detail.dart';

part 'app_nav.g.dart';

@Riverpod(keepAlive: true)
class AppRoute extends _$AppRoute {
  late GoRouter _router;

  static const KEY_ID = "id";
  static const KEY_ITEM = "item";

  @override
  FutureOr<void> build() {
    _router = ref.read(navigationProvider);
  }

  void navigate(Nav nav, {Map<String, dynamic>? args}) {
    _router.go(nav.routeName, extra: args);
  }

  void replace(Nav nav, {Map<String, dynamic>? args}) {
    _router.replace(nav.routeName, extra: args);
  }

  void back({Object? result}) {
    if (result == null) {
      _router.pop();
    } else {
      _router.pop(result);
    }
  }
}

@Riverpod(keepAlive: true)
GoRouter navigation(ref) {
  return GoRouter(
    initialLocation: Nav.splash.routeName,
    debugLogDiagnostics: kDebugMode,
    routes: Nav.values.where((e) => !e.isChild).map(
      (e) {
        return e.route(
          routes: e.children?.map((c) => c.route()).toList(),
        );
      },
    ).toList(),
  );
}

enum Nav {
  splash,
  pokemon,
  pokemonDetail,
}

extension NavigationExtension on Nav {
  GoRoute route({List<GoRoute>? routes}) {
    final child = isChild;
    final path = (child) ? pathName.split("/").last : routeName;
    return GoRoute(
      path: (child) ? path : routeName,
      pageBuilder: (child)
          ? (context, state) {
              final extra = state.extra as Map<String, dynamic>?;
              final id = extra?[AppRoute.KEY_ID];
              final widget =
                  getWidget(id: extra?[AppRoute.KEY_ID], extra: extra);
              return CustomTransitionPage(
                key: ValueKey("$routeName/$id"),
                child: widget,
                transitionsBuilder: (
                  context,
                  animation,
                  secondaryAnimation,
                  child,
                ) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOutCubic,
                      ),
                    ),
                    child: child,
                  );
                },
              );
            }
          : null,
      builder: (!child)
          ? (_, state) {
              final extra = state.extra as Map<String, dynamic>?;
              final widget =
                  getWidget(id: extra?[AppRoute.KEY_ID], extra: extra);
              return widget;
            }
          : null,
      routes: routes ?? [],
    );
  }

  String get routeName => "/$pathName";

  String get screenName {
    return switch (this) {
      Nav.splash => "splash",
      Nav.pokemon => "pokemon",
      Nav.pokemonDetail => "pokemon_detail",
    };
  }

  String get pathName {
    // if the nav is a child route,
    // you need to embed the parent route name as prefix
    // e.g. pokemon -> pokemon/detail
    return switch (this) {
      Nav.splash => "splash",
      Nav.pokemon => "pokemon",
      Nav.pokemonDetail => "${Nav.pokemon.pathName}/detail",
    };
  }

  dynamic getWidget({dynamic id, Map<String, dynamic>? extra}) {
    return switch (this) {
      Nav.splash => const SplashPage(),
      Nav.pokemon => const PokemonListPage(),
      Nav.pokemonDetail => PokemonDetailPage(
          id: id, initialItem: extra?[AppRoute.KEY_ITEM] as Pokemon?),
    };
  }

  // set the child routes
  List<Nav>? get children {
    return switch (this) {
      Nav.pokemon => [Nav.pokemonDetail],
      _ => null,
    };
  }

  // check if the route is a child route
  bool get isChild {
    final result =
        Nav.values.any((e) => e.children?.any((c) => c == this) == true);
    return result;
  }
}

class DialogPage<T> extends Page<T> {
  final Offset? anchorPoint;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final CapturedThemes? themes;
  final WidgetBuilder builder;

  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
        context: context,
        settings: this,
        builder: builder,
        anchorPoint: anchorPoint,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        themes: themes,
      );
}
