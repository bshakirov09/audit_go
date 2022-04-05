part of 'sign_up_bloc.dart';

@freezed
@immutable
class SignUpState with _$SignUpState {

  const SignUpState._();

  const factory SignUpState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isSignUpSuccess,
    @Default('') String error,
  }) = _SignUpState;

}
