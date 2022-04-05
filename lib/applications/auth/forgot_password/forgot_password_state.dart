part of 'forgot_password_cubit.dart';

@immutable
@freezed
class ForgotPasswordState with _$ForgotPasswordState {

  const ForgotPasswordState._();

  const factory ForgotPasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isResetPassword,
    @Default(false) bool isExistEmail,
    @Default('') String error,
  }) = _ForgotPasswordState;

}
