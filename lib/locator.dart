import 'package:get_it/get_it.dart';

import 'config.dart';
import 'presentation/core/routes/app_router.dart';
import 'presentation/core/routes/router_observer.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => RouterObserver());
}
