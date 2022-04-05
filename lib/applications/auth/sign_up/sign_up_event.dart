part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {
  const SignUpEvent();
}

class SignUpUserEvent extends SignUpEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const SignUpUserEvent({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });
}
