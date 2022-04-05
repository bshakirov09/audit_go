// Created by Muhammed Tolkinov on 11-March-2022

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:goplaciz/domain/auth/verify_email_types.dart';

@immutable
abstract class IVerifyEmailFacade {

  Future<Either<String, String>> verifyEmail({
    required String email,
    required String code,
    required VerifyEmailTypes verifyEmailType
  });

  Future<Either<String, Unit>> resendEmail({
    required String email,
    required VerifyEmailTypes verifyEmailType,
  });
}
