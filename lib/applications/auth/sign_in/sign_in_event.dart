part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {
  const SignInEvent();
}

class LoginEvent extends SignInEvent {
  final String email;
  final String password;

  const LoginEvent({required this.email, required this.password});
}

class AuthWithSocial extends SignInEvent {
  final SocialTypes socialType;

  const AuthWithSocial({required this.socialType});
}
