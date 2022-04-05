// Created by Muhammed Tolkinov on 11-March-2022

import 'package:meta/meta.dart';

@immutable
class ProfileModel {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String avatar;
  final int avatarId;
  final String phone;
  final String gender;
  final String birthday;
  final String city;
  final bool avatarFromLocal;

  const ProfileModel({
    this.id = 0,
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.avatar = '',
    this.avatarId = 0,
    this.phone = '',
    this.gender = '',
    this.birthday = '',
    this.city = '',
    this.avatarFromLocal = false,
  });

  static const ProfileModel init = ProfileModel();

  ProfileModel rebuildAvatarValue({
    required String avatar,
    required int avatarId,
  }) {
    return ProfileModel(
      id: avatarId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      avatar: avatar,
      phone: phone,
      gender: gender,
      birthday: birthday,
      city: city,
      avatarFromLocal: true,
    );
  }

  factory ProfileModel.fromJson({required Map<String, dynamic> json}) {
    return ProfileModel(
      id: json['id'],
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      email: json['email'] ?? '',
      avatar: json['avatar']?['file'] ?? '',
      avatarId: json['avatar']?['id'] ?? 0,
      phone: json['phone_number'] ?? '',
      gender: json['gender'] ?? '',
      birthday: json['birthday'] ?? '',
      city: json['city'] ?? ''
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "first_name" : firstName,
      "last_name" : lastName,
      "email" : email,
      if (gender.isNotEmpty) "gender" : gender,
      if (city.isNotEmpty) "city" : city,
      "birthday" : birthday,
      "phone_number" : phone
    };
  }

}
