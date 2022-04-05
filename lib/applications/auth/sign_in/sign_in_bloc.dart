import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goplaciz/domain/core/social_types.dart';
import 'package:goplaciz/infrastructure/repository/auth/auth_api.dart';
import 'package:goplaciz/infrastructure/repository/user_repository.dart';
import 'package:goplaciz/infrastructure/service/shared_pref_service.dart';
import 'package:goplaciz/utils/get_it.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const _SignInState()) {
    on<LoginEvent>(_login);
    on<AuthWithSocial>(_authWithSocial);
  }

  Future<void> _login(SignInEvent event, Emitter<SignInState> emit) async {
    event as LoginEvent;

    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      isLoginSuccess: false
    ));

    var result = await getIt.get<AuthAPI>().signIn(
      email: event.email,
      password: event.password,
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          hasError: true,
          error: error
        ));
      },
      (token) {
        SharedPrefService.initialize().then((pref) => pref.setAuthData = token);
        UserRepository.token = token;

        emit(state.copyWith(
          isLoading: false,
          isLoginSuccess: true
        ));
      }
    );
  }

  Future<void> _authWithSocial(SignInEvent event, Emitter<SignInState> emit) async {
    event as AuthWithSocial;

    emit(state.copyWith(
      isLoading2: true,
      hasError2: false,
      hasError: false,
    ));

    var result = await getIt.get<AuthAPI>().signInWithSocial(
      socialType: event.socialType
    );

    result.fold(
      (error) => emit(state.copyWith(
        isLoading2: false,
        hasError2: true,
        error: error,
      )),
      (token) {
        SharedPrefService.initialize().then((pref) => pref.setAuthData = token);
        UserRepository.token = token;

        emit(state.copyWith(
          isLoading2: false,
          isLoginSuccess: true,
        ));
      },
    );

  }
}
