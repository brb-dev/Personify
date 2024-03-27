import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:personify/domain/auth/entities/login_entity.dart';

import '../../../config.dart';
import '../../../domain/core/error/exception_handler.dart';

class AuthRemoteDataSource {
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;
  AuthRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<Login> signInWithGoogle() async {
    return await dataSourceExceptionHandler.handle(() async {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      return Login.empty().copyWith(
        displayName: userCredential.user?.displayName ?? '',
        email: userCredential.user?.email ?? '',
        photoURL: userCredential.user?.photoURL ?? '',
      );
    });
  }

  Future<bool> signOutFromGoogle() async {
    return await dataSourceExceptionHandler.handle(() async {
      await FirebaseAuth.instance.signOut();

      return true;
    });
  }

  Future<Stream<User?>> isAuthStateChanged() async {
    return await dataSourceExceptionHandler.handle(() async {
      return FirebaseAuth.instance.authStateChanges();
    });
  }
}
