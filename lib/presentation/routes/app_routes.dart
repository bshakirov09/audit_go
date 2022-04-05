// Created by Muhammed Tolkinov on 07-March-2022

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goplaciz/applications/edit_profile/edit_profile_cubit.dart';
import 'package:goplaciz/domain/auth/verify_email_types.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';

import 'app_pages_library.dart';

class AppRoutes {

  const AppRoutes._();

  static MaterialPageRoute authIntro() {
    return MaterialPageRoute(builder: (_) => const AuthIntroPage());
  }

  static MaterialPageRoute signIn() {
    return MaterialPageRoute(builder: (_) => const SignInPage());
  }

  static MaterialPageRoute signUp() {
    return MaterialPageRoute(builder: (_) => const SignUpPage());
  }

  static MaterialPageRoute forgotPassword() {
    return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
  }

  static MaterialPageRoute resetPassword({
    required String email,
    required String code,
  }) {
    return MaterialPageRoute(builder: (_) => ResetPasswordPage(
      email: email,
      code: code,
    ));
  }

  static MaterialPageRoute verifyEmail({
    required String email,
    required VerifyEmailTypes verifyEmailType,
  }) {
    return MaterialPageRoute(builder: (_) => VerifyEmailPage(
      email: email,
      verifyEmailType: verifyEmailType,
    ));
  }

  static MaterialPageRoute profile() {
    return MaterialPageRoute(builder: (_) => const ProfilePage());
  }

  static MaterialPageRoute editProfile({
    required ProfileModel profile,
    required VoidCallback whenComplete,
  }) {
    return MaterialPageRoute(builder: (_) => BlocProvider<EditProfileCubit>(
      create: (_) => EditProfileCubit(),
      child: EditProfilePage(
        profile: profile,
        whenComplete: whenComplete,
      ),
    ));
  }
}
