import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personify/config.dart';
import 'package:personify/locator.dart';

import '../../domain/auth/entities/login_entity.dart';
import '../../domain/auth/repository/i_auth_repository.dart';
import '../../domain/core/error/api_failure.dart';
import '../../infrastructure/core/firebase/firebase_remote_config.dart';

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
        emit(const AuthState.loading(isLoading: true));
        final Either<ApiFailure, Stream<User?>> result =
            await authRepository.isLoggedIn();
        FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
        await remoteConfig.setConfigSettings(RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(hours: 12),
        ));
        await remoteConfig.ensureInitialized();
        await remoteConfig.fetchAndActivate();
        await result.fold(
          (invalid) async => emit(const AuthState.unauthenticated()),
          (userStream) async => locator<Config>().appFlavor == Flavor.mock
              ? emit(
                  AuthState.authenticated(
                    user: Login.empty().copyWith(
                      displayName: 'John Doe',
                      email: 'johndoe@yopmail.com',
                      photoURL: '',
                      datagramKey: '',
                      openAIKey: '',
                    ),
                  ),
                )
              : userStream.listen((user) => user != null
                  ? emit(
                      AuthState.authenticated(
                        user: Login.empty().copyWith(
                          displayName: user.displayName ?? '',
                          email: user.email ?? '',
                          photoURL: user.photoURL ?? '',
                          datagramKey: locator<FirebaseRemoteConfigService>()
                              .getDatagramApiKey(),
                          openAIKey: locator<FirebaseRemoteConfigService>()
                              .getOpenAIApiKey(),
                        ),
                      ),
                    )
                  : emit(const AuthState.unauthenticated())),
        );
      },
      logout: (e) async {
        emit(const AuthState.loading(
          isLoading: true,
        ));
        authRepository.logout();
        emit(const AuthState.unauthenticated());
      },
      signinWithGoogle: (_) async {
        emit(const AuthState.loading(
          isLoading: true,
        ));
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
