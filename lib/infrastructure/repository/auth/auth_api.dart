// Created by Muhammed Tolkinov on 09-March-2022

import 'package:dartz/dartz.dart';

import 'package:goplaciz/domain/auth/i_auth_facade.dart';
import 'package:goplaciz/domain/auth/i_forgot_password_facade.dart';
import 'package:goplaciz/domain/auth/i_verify_email_facade.dart';
import 'package:goplaciz/domain/auth/verify_email_types.dart';
import 'package:goplaciz/domain/core/social_types.dart';

import 'forgot_password_request.dart';
import 'sign_in_request.dart';
import 'sign_in_with_social_request.dart';
import 'sign_up_request.dart';
import 'verify_email_request.dart';

class AuthAPI implements IAuthFacade, IVerifyEmailFacade, IForgotPasswordFacade {

  @override
  Future<Either<String, String>> signIn({
    required String email,
    required String password,
  }) async {
    var request = SignInRequest();
    return await request.signIn(email: email, password: password);
  }

  @override
  Future<Either<String, String>> signInWithSocial({
    required SocialTypes socialType
  }) async {
    var request = SignInWithSocialRequest();
    return await request.auth(socialType: socialType);
  }

  @override
  Future<Either<String, Unit>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    var request = SignUpRequest();
    return await request.signUp(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    );
  }

  @override
  Future<Either<String, Unit>> resendEmail({
    required String email,
    required VerifyEmailTypes verifyEmailType,
  }) async {
    var request = VerifyEmailRequest();
    return await request.resendEmail(
      email: email,
      verifyEmailType: verifyEmailType,
    );
  }

  @override
  Future<Either<String, String>> verifyEmail({
    required String email,
    required String code,
    required VerifyEmailTypes verifyEmailType,
  }) async {
    var request = VerifyEmailRequest();
    return await request.verifyEmail(
      email: email,
      code: code,
      verifyEmailType: verifyEmailType,
    );
  }

  @override
  Future<Either<String, Unit>> checkEmail({required String email}) async {
    var request = ForgotPasswordRequest();
    return await request.checkEmail(email: email);
  }

  @override
  Future<Either<String, Unit>> resetPassword({
    required String email,
    required String code,
    required String password,
  }) async {
    var request = ForgotPasswordRequest();
    return await request.resetPassword(email: email, code: code, password: password);
  }

}
