// Created by Muhammed Tolkinov on 09-March-2022

import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../infrastructure/repository/auth/auth_api.dart';
import '../infrastructure/repository/common/get_or_upload_media_api.dart';
import '../infrastructure/repository/explore/explore_api.dart';
import '../infrastructure/repository/profile/profile_api.dart';

final GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerLazySingleton<AuthAPI>(() => AuthAPI());
  getIt.registerLazySingleton<ProfileAPI>(() => ProfileAPI());
  getIt.registerLazySingleton<GetOrUploadMediaAPI>(() => GetOrUploadMediaAPI());
  getIt.registerLazySingleton<ExploreAPI>(() => ExploreAPI());
}
