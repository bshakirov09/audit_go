// Created by Muhammed Tolkinov on 11-March-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/utils/get_it.dart';

import '../api_list.dart';

class SignUpRequest {

  Future<Either<String, Unit>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        ApiList.signUp,
        data: {
          "first_name" : firstName,
          "last_name" : lastName,
          "email" : email,
          "password" : password
        },
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.created) {
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
