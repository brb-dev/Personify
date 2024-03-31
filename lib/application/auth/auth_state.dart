part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({Login? user, bool? isLoading}) = _Initial;
  const factory AuthState.loading({Login? user, required bool isLoading}) =
      _Loading;
  const factory AuthState.authenticated(
      {required Login user, bool? isLoading}) = _Authenticated;
  const factory AuthState.unauthenticated({Login? user, bool? isLoading}) =
      _Unauthenticated;
}
