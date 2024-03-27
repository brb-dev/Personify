import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/entities/login_entity.dart';
import '../../domain/auth/repository/i_auth_repository.dart';
import '../../domain/core/error/api_failure.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  late StreamSubscription<User?> _userSubscription;
  AuthBloc({
    required this.authRepository,
  }) : super(const AuthState.initial()) {
    on<AuthEvent>(_onEvent);
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      init: (e) async => add(const AuthEvent.authCheck()),
      authCheck: (e) async {
        emit(const AuthState.loading());
        final Either<ApiFailure, Stream<User?>> result =
            await authRepository.isLoggedIn();
        await result.fold(
          (invalid) async => emit(const AuthState.unauthenticated()),
          (userStream) async => userStream.listen((user) => user != null
              ? emit(
                  AuthState.authenticated(
                    user: Login.empty().copyWith(
                      displayName: user.displayName ?? '',
                      email: user.email ?? '',
                      photoURL: user.photoURL ?? '',
                    ),
                  ),
                )
              : emit(const AuthState.unauthenticated())),
        );
      },
      logout: (e) async {
        emit(const AuthState.loading());
        authRepository.logout();
        emit(const AuthState.unauthenticated());
      },
      signinWithGoogle: (_) async {
        emit(const AuthState.loading());
        final response = await authRepository.loginWithGoogle();
        await response.fold(
          (invalid) async => emit(const AuthState.unauthenticated()),
          (user) async => emit(
            AuthState.authenticated(
              user: user,
            ),
          ),
        );
      },
    );
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
