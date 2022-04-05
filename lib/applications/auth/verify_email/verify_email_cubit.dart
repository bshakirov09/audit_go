
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goplaciz/domain/auth/verify_email_types.dart';
import 'package:goplaciz/infrastructure/repository/auth/auth_api.dart';
import 'package:goplaciz/infrastructure/repository/user_repository.dart';
import 'package:goplaciz/infrastructure/service/shared_pref_service.dart';
import 'package:goplaciz/utils/get_it.dart';

part 'verify_email_state.dart';
part 'verify_email_cubit.freezed.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  VerifyEmailCubit() : super(const _VerifyEmailState());

  Future<void> checkEmail({
    required String email,
    required String code,
    required VerifyEmailTypes verifyEmailType,
  }) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      isVerifiedEmail: false,
      isResendVerificationCode: false,
    ));


    final Either<String, String> result = await getIt.get<AuthAPI>().verifyEmail(
      email: email,
      code: code,
      verifyEmailType: verifyEmailType,
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          hasError: true,
          error: error,
        ));
      },
      (token) {
        if (verifyEmailType == VerifyEmailTypes.signUp) {
          SharedPrefService.initialize().then((pref) => pref.setAuthData = token);
          UserRepository.token = token;
        }

        emit(state.copyWith(
          isLoading: false,
          isVerifiedEmail: true,
        ));
      },
    );

  }

  Future<void> sendAgain({
    required String email,
    required VerifyEmailTypes verifyEmailType,
  }) async {

    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      isVerifiedEmail: false,
      isResendVerificationCode: false,
    ));

    final Either<String, Unit> result = await getIt.get<AuthAPI>().resendEmail(
      email: email,
      verifyEmailType: verifyEmailType,
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          hasError: true,
          error: error
        ));
      },
      (r) {
        emit(state.copyWith(
          isLoading: false,
          isResendVerificationCode: true,
        ));
      },
    );
  }

}
