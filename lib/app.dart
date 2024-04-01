import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personify/firebase_options.dart';

import 'application/auth/auth_bloc.dart';
import 'application/core/player/player_bloc.dart';
import 'application/ind_record/ind_record_bloc.dart';
import 'config.dart';
import 'infrastructure/core/firebase/firebase_remote_config.dart';
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
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      await locator<FirebaseRemoteConfigService>().init();
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

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => locator<AuthBloc>()..add(const AuthEvent.init()),
        ),
        BlocProvider<IndRecordBloc>(
          create: (context) => locator<IndRecordBloc>(),
        ),
        BlocProvider<PlayerBloc>(
          create: (context) =>
              locator<PlayerBloc>()..add(const PlayerEvent.init()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appThemeData[AppTheme.dark],
        routerDelegate: AutoRouterDelegate(
          router,
          navigatorObservers: () => [
            locator<RouterObserver>(),
          ],
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
