// Created by Muhammed Tolkinov on 04-April-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/utils/get_it.dart';

import '../api_list.dart';
import '../user_repository.dart';

class DeleteProfileRequest {

  Future<Either<String, Unit>> delete() async {
    try {
      final Response response = await getIt.get<Dio>().get(
        ApiList.deleteProfile,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader : "Token ${UserRepository.token}",
          },
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
