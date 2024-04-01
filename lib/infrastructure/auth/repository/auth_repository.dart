import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../config.dart';
import '../../../domain/auth/entities/login_entity.dart';
import '../../../domain/auth/repository/i_auth_repository.dart';
import '../../../domain/core/error/api_failure.dart';
import '../../../domain/core/error/failure_handler.dart';
import '../datasource/auth_local.dart';
import '../datasource/auth_remote.dart';

class AuthRepository implements IAuthRepository {
  final Config config;
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepository({
    required this.config,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, bool>> logout() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final success = await localDataSource.signOutFromGoogle();

        return Right(success);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final success = await remoteDataSource.signOutFromGoogle();

      return Right(success);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Login>> loginWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, Login>> loginWithGoogle() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final login = await localDataSource.signInWithGoogle();

        return Right(login);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final login = await remoteDataSource.signInWithGoogle();

      return Right(login);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Stream<User?>>> isLoggedIn() async {
    try {
      final isAuthStateChanged = await remoteDataSource.isAuthStateChanged();

      return Right(isAuthStateChanged);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
