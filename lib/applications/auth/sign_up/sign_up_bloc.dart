
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:goplaciz/infrastructure/repository/auth/auth_api.dart';
import 'package:goplaciz/utils/get_it.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const _SignUpState()) {
    on<SignUpUserEvent>(_signUp);
  }

  Future<void> _signUp(SignUpEvent event, Emitter<SignUpState> emit) async {

    event as SignUpUserEvent;

    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      isSignUpSuccess: false,
    ));

    final Either<String, Unit> result = await getIt.get<AuthAPI>().signUp(
      firstName: event.firstName,
      lastName: event.lastName,
      email: event.email,
      password: event.password,
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          hasError: true,
          error: error,
        ));
      },
      (r) {
        emit(state.copyWith(
          isLoading: false,
          isSignUpSuccess: true,
        ));
      },
    );
  }
}
