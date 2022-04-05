// Created by Muhammed Tolkinov on 09-March-2022

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:goplaciz/domain/core/social_types.dart';

@immutable
abstract class IAuthFacade {
  Future<Either<String, String>> signIn({
    required String email,
    required String password,
  });
  Future<Either<String, String>> signInWithSocial({
    required SocialTypes socialType
  });
  Future<Either<String, Unit>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });
}
