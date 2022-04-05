
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goplaciz/domain/core/server_failure.dart';
import 'package:goplaciz/infrastructure/model/explore_model.dart';
import 'package:goplaciz/utils/get_it.dart';

import '../api_list.dart';
import '../user_repository.dart';

class GetExploresRequest {

  Future<Either<String, List<ExploreModel>>> getData() async {
    try {
      final Response response = await getIt.get<Dio>().get(
        ApiList.explore,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader : "Token ${UserRepository.token}",
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(ExploreModel.fetchData(
          results: response.data['results'] ?? [])
        );
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
