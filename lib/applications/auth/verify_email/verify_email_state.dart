part of 'verify_email_cubit.dart';

@immutable
@freezed
class VerifyEmailState with _$VerifyEmailState {
  const VerifyEmailState._();

  const factory VerifyEmailState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isVerifiedEmail,
    @Default(false) bool isResendVerificationCode,
    @Default('') String error,
  }) = _VerifyEmailState;

}
