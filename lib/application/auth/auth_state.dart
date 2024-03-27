part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({Login? user}) = _Initial;
  const factory AuthState.loading({Login? user}) = _Loading;
  const factory AuthState.authenticated({required Login user}) = _Authenticated;
  const factory AuthState.unauthenticated({Login? user}) = _Unauthenticated;
}
