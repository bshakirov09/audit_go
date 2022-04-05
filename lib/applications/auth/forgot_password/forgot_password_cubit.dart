
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goplaciz/infrastructure/repository/auth/auth_api.dart';
import 'package:goplaciz/utils/get_it.dart';

part 'forgot_password_state.dart';
part 'forgot_password_cubit.freezed.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(const _ForgotPasswordState());


  Future<void> checkEmail({required String email}) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      isExistEmail: false,
    ));

    final Either<String, Unit> result = await getIt.get<AuthAPI>().checkEmail(
      email: email
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
          isExistEmail: true,
        ));
      }
    );

  }

  Future<void> resetPassword({
    required String email,
    required String code,
    required String password,
  }) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      isResetPassword: false,
    ));

    final Either<String, Unit> result = await getIt.get<AuthAPI>().resetPassword(
      email: email,
      code: code,
      password: password,
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
          isResetPassword: true,
        ));
      },
    );
  }

}
