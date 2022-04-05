// Created by Muhammed Tolkinov on 10-March-2022

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {

  static const String _accessToken = 'token';
  static const String _authStatus = 'auth_status';

  static late SharedPreferences? _preference;

  const SharedPrefService._();

  static Future<SharedPrefService> initialize() async {
    _preference = await SharedPreferences.getInstance();
    return const SharedPrefService._();
  }

  set setAuthData(String token) {
    _preference?.setString(_accessToken, token);
    _preference?.setBool(_authStatus, true);
  }

  String get getToken => _preference?.getString(_accessToken) ?? '';

  bool get getAuthStatus => _preference?.getBool(_authStatus) ?? false;

  void logout() => _preference?.clear();
}
