import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcase_showcase_flutter/app/app_theme_mode.dart';
import 'package:showcase_showcase_flutter/repository/pokemon/repository_pokemon.dart';
import 'package:showcase_showcase_flutter/view/pokemon/providers/provider_pokemon_list_style.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_client.dart';
import '../api/api_interface.dart';
import '../api/base/interface_api_client.dart';
import '../generated/codegen_loader.g.dart';
import 'app_colors.dart';
import 'app_main.dart';
import 'app_nav.dart';

part 'app_startup.g.dart';

@Riverpod(keepAlive: true)
Future<void> _appStartup(_AppStartupRef ref) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await ref.watch(sharedPreferencesProvider.future);
  ref.watch(appThemeModeProvider);
  ref.watch(apiClientProvider);
  ref.watch(pokemonRepositoryProvider);
  ref.watch(listStyleProvider);
}

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(SharedPreferencesRef ref) =>
    SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
ApiClient<ApiInterface> apiClient(ApiClientRef ref) {
  return ApiClientImpl(ref).init();
}

final appColorsProvider =
    Provider<AppColors>((_) => throw UnimplementedError());

class AppStartupWidget extends ConsumerWidget {
  const AppStartupWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(_appStartupProvider);
    final router = ref.watch(navigationProvider);
    return ProviderScope(
      child: appStartupState.when(
        loading: () => const SizedBox.shrink(),
        error: (e, st) {
          log(st.toString());
          return const SizedBox.shrink();
        },
        data: (_) => EasyLocalization(
          supportedLocales: const [Locale("en")],
          path: "resources/strings",
          fallbackLocale: const Locale("en"),
          assetLoader: const CodegenLoader(),
          child: MainApp(router),
        ),
      ),
    );
  }
}
