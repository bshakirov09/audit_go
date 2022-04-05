// Created by Muhammed Tolkinov on 16-March-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';
import 'package:goplaciz/utils/get_it.dart';

import '../api_list.dart';
import '../user_repository.dart';

class UpdateProfileRequest {

  Future<Either<String, Unit>> updateProfile({
    required ProfileModel profile,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().put(
        ApiList.updateProfile,
        data: profile.toJson(),
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
          statusCode: response.statusCode,
        ));
      }
    } catch(e) {
      return left(e.toString());
    }
  }

  Future<Either<String, Unit>> updateAvatar({
    required int imageId,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().put(
        ApiList.updateAvatar,
        data: {
          'avatar' : imageId,
        },
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
          statusCode: response.statusCode,
        ));
      }
    } catch(e) {
      return left(e.toString());
    }
  }
}
