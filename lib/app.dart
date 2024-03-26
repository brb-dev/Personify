import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'config.dart';
import 'locator.dart';
import 'presentation/core/routes/app_router.dart';
import 'presentation/core/routes/router_observer.dart';
import 'presentation/core/theme/app_theme.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();

  final config = locator<Config>();
  config.appFlavor = flavor;
}

void runAppWithCrashlyticsAndLocalization({required Flavor flavor}) {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(
        const App(),
      );
    },
    (error, stackTrace) {
      //record Error
    },
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appThemeData[AppTheme.dark],
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [
          locator<RouterObserver>(),
        ],
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
