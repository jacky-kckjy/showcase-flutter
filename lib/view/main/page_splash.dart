import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/app_main.dart';
import '../../app/app_nav.dart';
import '../../generated/image_keys.g.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
            ),
            child: _AppLogo(
              onLoaded: () async {
                ref.read(appRouteProvider.notifier).navigate(Nav.pokemon);
              },
            ),
          )
        ],
      ),
    );
  }
}

class _AppLogo extends StatefulWidget {
  final FutureCallback<void> onLoaded;

  const _AppLogo({
    required this.onLoaded,
  });

  @override
  State<_AppLogo> createState() => _AppLogoState();
}

class _AppLogoState extends State<_AppLogo> {
  bool _ready = false;

  @override
  void initState() {
    super.initState();

    _ready = false;
  }

  @override
  Widget build(BuildContext context) {
    if (_ready) {
      return _logo()
          .animate()
          .scale(
            duration: 500.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(10.0, 10.0),
            curve: Curves.easeOutCubic,
          )
          .blurXY(begin: 0, end: 50)
          .fadeOut()
          .callback(
        callback: (_) async {
          log('App is ready, moving to next page', name: 'app');
          await widget.onLoaded();
        },
      );
    }
    return _logo()
        .animate()
        .blurXY(begin: 50)
        .fadeIn()
        .scale(
          delay: 200.ms,
          duration: 1000.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(1.0, 1.0),
          curve: Curves.easeOutCubic,
        )
        .callback(
      callback: (_) async {
        if (!_ready) {
          log('App is ready', name: 'app');
          setState(() {
            _ready = true;
          });
        }
      },
    );
  }

  Widget _logo() {
    return FittedBox(
      child: Transform.scale(
        scale: 0.5,
        child: Image(image: AssetImage(ImageKeys.logo)),
      ),
    );
  }
}
