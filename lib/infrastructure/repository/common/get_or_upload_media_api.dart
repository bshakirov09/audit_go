// Created by Muhammed Tolkinov on 17-December-2021

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import 'package:goplaciz/infrastructure/repository/api_list.dart';
import 'package:goplaciz/utils/get_it.dart';

import '../user_repository.dart';

class GetOrUploadMediaAPI {

  Future<String> getPhotoFromDevice() async {
    try {
      final ImagePicker _imagePicker = ImagePicker();
      final XFile? _xFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
        maxWidth: 1280,
        maxHeight: 1280
      );
      if (_xFile != null) {
        return _xFile.path;
      }
      else {
        return '';
      }
    } catch(e) {
      return '';
    }
  }

  Future<int> uploadMedia({required String file}) async {
    try {
      final FormData formData = FormData();

      formData.files.add(
        MapEntry('file', await MultipartFile.fromFile(file))
      );

      final Response response = await getIt.get<Dio>().post(
        ApiList.createFile,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader : "Token ${UserRepository.token}",
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: formData,
      );

      if (response.statusCode == HttpStatus.created) {
        return response.data['id'];
      }
      else {
        return -1;
      }
    } catch (e) {
      return -1;
    }
  }

}
