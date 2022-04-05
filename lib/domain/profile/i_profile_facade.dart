// Created by Muhammed Tolkinov on 11-March-2022

import 'package:dartz/dartz.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class IProfileFacade {

  Future<Either<String, ProfileModel>> getProfile();
  Future<Either<String, Unit>> deleteProfile();
  Future<Either<String, Unit>> updateProfile({
    required ProfileModel profile,
  });
  Future<Either<String, Unit>> updateAvatar({
    required int imageId,
  });
}
