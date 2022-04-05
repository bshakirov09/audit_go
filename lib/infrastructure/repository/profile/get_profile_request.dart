// Created by Muhammed Tolkinov on 11-March-2022

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';
import 'package:goplaciz/infrastructure/repository/user_repository.dart';
import 'package:goplaciz/utils/get_it.dart';

import '../api_list.dart';

class GetProfileRequest {

  Future<Either<String, ProfileModel>> getProfile() async {
    try {
      final Response response = await getIt.get<Dio>().get(
        ApiList.getProfile,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader : "Token ${UserRepository.token}",
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(ProfileModel.fromJson(json: response.data));
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
