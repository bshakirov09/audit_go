// Created by Muhammed Tolkinov on 04-March-2022

import 'package:dartz/dartz.dart';

import 'input_failures.dart';

class InputValidations {
  Either<InputFailures, String> validatePassword(String input) {

    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    }
    else if (input.length < 6) {
      return left(InputFailures.passwordMustBe(input));
    }
    else {
      return right(input);
    }
  }

  Either<InputFailures, String> validatePhoneNumber(String input) {
    const String phoneNumberRegex = r"^[0-9]{2}[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{2}[-\s\.]?[0-9]{2}";

    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    }
    else if (input.length < 12) {
      return left(InputFailures.invalidPhoneNumber(input));
    }
    else if (RegExp(phoneNumberRegex).hasMatch(input)) {
      return right(input);
    }
    else {
      return left(InputFailures.invalidPhoneNumber(input));
    }
  }

  Either<InputFailures, String> validatePassportNumbers(String input) {

    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    }
    else if (input.length < 10) {
      return left(InputFailures.invalidPassportNumber(input));
    }
    else {
      return right(input);
    }
  }

  Either<InputFailures, String> validateOtp(String input) {

    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    }
    else if (input.length < 4) {
      return left(InputFailures.invalidOTP(input));
    }
    else {
      return right(input);
    }
  }

  Either<InputFailures, String> validateCardNumbers(String input) {

    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    }
    else if (input.length < 19) {
      return left(InputFailures.invalidPassportNumber(input));
    }
    else {
      return right(input);
    }
  }

  Either<InputFailures, String> validateCardExp(String input) {

    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    }
    else if (input.length < 5) {
      return left(InputFailures.invalidCardExp(input));
    }
    else {
      return right(input);
    }
  }

  Either<InputFailures, String> defaultValidation(String input) {

    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    }
    else {
      return right(input);
    }
  }
}
