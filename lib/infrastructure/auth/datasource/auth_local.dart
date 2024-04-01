import '../../../domain/auth/entities/login_entity.dart';

class AuthLocalDataSource {
  Future<Login> signInWithGoogle() async {
    await Future.delayed(const Duration(seconds: 3));
    return Login.empty().copyWith(
      displayName: 'John Doe',
      email: 'john.doe@yopmail.com',
      photoURL: '',
    );
  }

  Future<bool> signOutFromGoogle() async {
    return true;
  }
}
