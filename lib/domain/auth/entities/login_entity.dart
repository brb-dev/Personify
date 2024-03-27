import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entity.freezed.dart';

@freezed
class Login with _$Login {
  const Login._();

  const factory Login({
    required String displayName,
    required String email,
    required String photoURL,
  }) = _Login;

  factory Login.empty() => const Login(
        displayName: '',
        email: '',
        photoURL: '',
      );
}
