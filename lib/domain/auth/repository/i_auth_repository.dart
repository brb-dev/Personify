import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../core/error/api_failure.dart';
import '../entities/login_entity.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, Login>> loginWithGoogle();
  Future<Either<ApiFailure, Login>> loginWithApple();
  Future<Either<ApiFailure, bool>> logout();

  Future<Either<ApiFailure, Stream<User?>>> isLoggedIn();
}
