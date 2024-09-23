import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_text_styles.dart';
import 'app_theme_mode.dart';

typedef FutureCallback<T> = Future<T> Function();

final navigatorKey = GlobalKey<NavigatorState>();
final navigatorKeyProvider = Provider((_) => navigatorKey);

class MainApp extends ConsumerStatefulWidget {
  final GoRouter router;

  const MainApp(this.router, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final themeProvider = ref.read(appThemeModeProvider.notifier);
    var localize = context.localizationDelegates;
    final localization = FlutterLocalization.instance;

    return MaterialApp.router(
      key: ref.read(navigatorKeyProvider),
      routerConfig: widget.router,
      themeMode: themeProvider.themeMode,
      locale: const Locale("en"),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        ...localization.localizationsDelegates,
        ...localize,
      ],
      supportedLocales: const [Locale("en")],
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: TextTheme(
          displayLarge: AppTextStyle.displayLarge(color: Colors.white),
          displayMedium: AppTextStyle.displayMedium(color: Colors.white),
          displaySmall: AppTextStyle.displaySmall(color: Colors.white),
          headlineLarge: AppTextStyle.headlineLarge(color: Colors.white),
          headlineMedium: AppTextStyle.headlineMedium(color: Colors.white),
          headlineSmall: AppTextStyle.headlineSmall(color: Colors.white),
          titleLarge: AppTextStyle.titleLarge(color: Colors.white),
          titleMedium: AppTextStyle.titleMedium(color: Colors.white),
          titleSmall: AppTextStyle.titleSmall(color: Colors.white),
          bodyLarge: AppTextStyle.bodyLarge(color: Colors.white),
          bodyMedium: AppTextStyle.bodyMedium(color: Colors.white),
          bodySmall: AppTextStyle.bodySmall(color: Colors.white),
        ),
      ),
      theme: ThemeData.light(useMaterial3: true).copyWith(
        textTheme: TextTheme(
          displayLarge: AppTextStyle.displayLarge(color: Colors.black),
          displayMedium: AppTextStyle.displayMedium(color: Colors.black),
          displaySmall: AppTextStyle.displaySmall(color: Colors.black),
          headlineLarge: AppTextStyle.headlineLarge(color: Colors.black),
          headlineMedium: AppTextStyle.headlineMedium(color: Colors.black),
          headlineSmall: AppTextStyle.headlineSmall(color: Colors.black),
          titleLarge: AppTextStyle.titleLarge(color: Colors.black),
          titleMedium: AppTextStyle.titleMedium(color: Colors.black),
          titleSmall: AppTextStyle.titleSmall(color: Colors.black),
          bodyLarge: AppTextStyle.bodyLarge(color: Colors.black),
          bodyMedium: AppTextStyle.bodyMedium(color: Colors.black),
          bodySmall: AppTextStyle.bodySmall(color: Colors.black),
        ),
      ),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            // close the soft keyboard by clicking anywhere on screen except the text field
            FocusManager.instance.primaryFocus?.unfocus();
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          },
          child: MediaQuery(
            data: mediaQueryData.copyWith(textScaler: TextScaler.noScaling),
            child: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light.copyWith(
                systemNavigationBarColor: Colors.black.withOpacity(0.05),
              ),
              child: child!,
            ),
          ),
        );
      },
    );
  }
}
