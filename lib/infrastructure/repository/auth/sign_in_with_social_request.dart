// Created by Muhammed Tolkinov on 14-March-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/domain/core/social_types.dart';
import 'package:goplaciz/utils/get_it.dart';
import 'package:goplaciz/utils/extensions.dart';

import '../api_list.dart';

class SignInWithSocialRequest {

  Future<Either<String, String>> auth({
    required SocialTypes socialType,
  }) async {
    try {

      Either<String, String> socialAuthResult;

      if (socialType == SocialTypes.facebook) {
        socialType.name;
        socialAuthResult = await _authWithFacebook();
      }
      else if (socialType == SocialTypes.google) {
        socialAuthResult = await _authWithGoogle();
      }
      else {
        socialAuthResult = await _authWithApple();
      }

      return socialAuthResult.fold(
        (error) => left(error),
        (token) async => await _authUser(
          token: token,
          socialType: socialType.getName(),
        ),
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  Future<Either<String, String>> _authWithFacebook() async {
    try {
      var facebook = FacebookLogin();

      var result = await facebook.logIn(permissions: [
        FacebookPermission.publicProfile,
        FacebookPermission.email,
      ]);
      switch (result.status) {
        case FacebookLoginStatus.success:
          return right(result.accessToken?.token ?? '');
        case FacebookLoginStatus.cancel:
          return left('canceled');
        case FacebookLoginStatus.error:
          return left(result.error?.localizedDescription ?? '');
        default:
          return left('Something went wrong');
      }
    } catch(e) {
      return left(e.toString());
    }
  }

  Future<Either<String, String>> _authWithGoogle() async {
    try {
      var googleSignIn = GoogleSignIn();
      var user = await googleSignIn.signIn();

      if (user == null) {
        return left('Can not sign in with Google');
      }
      else {
        final GoogleSignInAuthentication googleAuth = await user.authentication;

        if (googleAuth.accessToken != null) {
          return right(googleAuth.accessToken ?? '');
        }
        else {
          return left('Can not sign in with Google');
        }
      }
    } catch(e) {
      return left(e.toString());
    }
  }

  Future<Either<String, String>> _authWithApple() async {
    try {
      final AuthorizationCredentialAppleID credentialApple =
      await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      return right(credentialApple.authorizationCode);
    } catch(e) {
      return left(e.toString());
    }
  }

  Future<Either<String, String>> _authUser({
    required String token,
    required String socialType
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        ApiList.signInWithSocial,
        data: {
          "access_token" : token,
          "type_token" : socialType
        },
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(response.data['token']);
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch(e) {
      return left(e.toString());
    }
  }

}
