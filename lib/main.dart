import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app_startup.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: AppStartupWidget(),
    ),
  );
}