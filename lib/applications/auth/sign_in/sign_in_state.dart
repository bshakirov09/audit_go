part of 'sign_in_bloc.dart';

@freezed
@immutable
class SignInState with _$SignInState {

  const SignInState._();

  const factory SignInState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoading2,
    @Default(false) bool hasError,
    @Default(false) bool hasError2,
    @Default(false) bool isLoginSuccess,
    @Default('') String error,
  }) = _SignInState;

}
