// Created by Muhammed Tolkinov on 11-March-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:goplaciz/domain/auth/verify_email_types.dart';
import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/infrastructure/repository/api_list.dart';
import 'package:goplaciz/utils/get_it.dart';

class VerifyEmailRequest {

  Future<Either<String, String>> verifyEmail({
    required String email,
    required String code,
    required VerifyEmailTypes verifyEmailType,
  }) async {
    String url;

    if (verifyEmailType == VerifyEmailTypes.signUp) {
      url = ApiList.verifyEmail;
    }
    else {
      url = ApiList.checkForgotPasswordCode;
    }

    try {
      final Response response = await getIt.get<Dio>().post(
        url,
        data: {
          "email" : email,
          "code" : code,
        },
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        if (verifyEmailType == VerifyEmailTypes.signUp) {
          return right(response.data['token']);
        }
        else {
          if (response.data['status']) {
            return right('');
          }
          else {
            return left('Something went wrong');
          }
        }
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

  Future<Either<String, Unit>> resendEmail({
    required String email,
    required VerifyEmailTypes verifyEmailType,
  }) async {
    String url;

    if (verifyEmailType == VerifyEmailTypes.signUp) {
      url = ApiList.resendVerificationCode;
    }
    else {
      url = ApiList.resendForgotPasswordCode;
    }

    try {
      final Response response = await getIt.get<Dio>().post(
        url,
        data: {
          "email" : email,
        },
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(unit);
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
