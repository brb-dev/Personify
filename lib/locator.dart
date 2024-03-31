import 'package:get_it/get_it.dart';

import 'application/auth/auth_bloc.dart';
import 'application/core/player/player_bloc.dart';
import 'application/ind_record/ind_record_bloc.dart';
import 'config.dart';
import 'domain/core/error/exception_handler.dart';
import 'infrastructure/auth/datasource/auth_local.dart';
import 'infrastructure/auth/datasource/auth_remote.dart';
import 'infrastructure/auth/repository/auth_repository.dart';
import 'infrastructure/ind_record/datasource/ind_record_local.dart';
import 'infrastructure/ind_record/datasource/ind_record_remote.dart';
import 'infrastructure/ind_record/repository/ind_record_repository.dart';
import 'presentation/core/routes/app_router.dart';
import 'presentation/core/routes/router_observer.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => RouterObserver());

  locator.registerLazySingleton(() => DataSourceExceptionHandler());
  locator.registerLazySingleton(() => AuthLocalDataSource());
  locator.registerLazySingleton(
    () => AuthRemoteDataSource(
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthRepository(
      config: locator<Config>(),
      remoteDataSource: locator<AuthRemoteDataSource>(),
      localDataSource: locator<AuthLocalDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthBloc(
      authRepository: locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton(() => IndRecordLocalDataSource());
  locator.registerLazySingleton(
    () => IndRecordRemoteDataSource(
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => IndRecordRepository(
      config: locator<Config>(),
      remoteDataSource: locator<IndRecordRemoteDataSource>(),
      localDataSource: locator<IndRecordLocalDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => IndRecordBloc(
      indRecordRepository: locator<IndRecordRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => PlayerBloc(),
  );
}
