// Created by Muhammed Tolkinov on 11-March-2022

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

@immutable
abstract class IForgotPasswordFacade {

  Future<Either<String, Unit>> checkEmail({required String email});
  Future<Either<String, Unit>> resetPassword({
    required String email,
    required String code,
    required String password,
  });

}
