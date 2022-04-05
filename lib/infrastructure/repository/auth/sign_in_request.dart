// Created by Muhammed Tolkinov on 09-March-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/infrastructure/repository/api_list.dart';
import 'package:goplaciz/utils/get_it.dart';

class SignInRequest {

  Future<Either<String, String>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        ApiList.signIn,
        data: {
          "email": email,
          "password": password,
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
