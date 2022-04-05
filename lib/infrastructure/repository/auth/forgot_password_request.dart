// Created by Muhammed Tolkinov on 11-March-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/infrastructure/repository/api_list.dart';
import 'package:goplaciz/utils/get_it.dart';

class ForgotPasswordRequest {

  Future<Either<String, Unit>> checkEmail({required String email}) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        ApiList.sendForgotPasswordCode,
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

  Future<Either<String, Unit>> resetPassword({
    required String email,
    required String code,
    required String password,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        ApiList.resetPassword,
        data: {
          "email" : email,
          "code" : code,
          "new_password" : password
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
