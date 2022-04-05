// Created by Muhammed Tolkinov on 11-March-2022

import 'package:dartz/dartz.dart';

import 'package:goplaciz/domain/profile/i_profile_facade.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';

import 'delete_profile_request.dart';
import 'get_profile_request.dart';
import 'update_profile_request.dart';

class ProfileAPI implements IProfileFacade {

  @override
  Future<Either<String, ProfileModel>> getProfile() async {
    var request = GetProfileRequest();
    return await request.getProfile();
  }

  @override
  Future<Either<String, Unit>> updateAvatar({required int imageId}) async {
    var request = UpdateProfileRequest();
    return await request.updateAvatar(imageId: imageId);
  }

  @override
  Future<Either<String, Unit>> updateProfile({
    required ProfileModel profile,
  }) async {
    var request = UpdateProfileRequest();
    return await request.updateProfile(profile: profile);
  }

  @override
  Future<Either<String, Unit>> deleteProfile() async {
    var request = DeleteProfileRequest();
    return await request.delete();
  }

}
