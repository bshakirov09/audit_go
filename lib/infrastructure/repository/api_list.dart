// Created by Muhammed Tolkinov on 07-March-2022

class ApiList {

  const ApiList._();

  static const String _baseUrl = 'https://devapi.goplaciz.com'; // DEV
  static const String signIn = '$_baseUrl/api/v1/user/login/';
  static const String signUp = '$_baseUrl/api/v1/user/signup/';
  static const String resendVerificationCode = '$_baseUrl/api/v1/user/resend_verify_code/';
  static const String resendForgotPasswordCode = '$_baseUrl/api/v1/user/send_forgot_password_code/';
  static const String verifyEmail = '$_baseUrl/api/v1/user/verify_email/';
  static const String checkForgotPasswordCode = '$_baseUrl/api/v1/user/check_forgot_password_code/';
  static const String getProfile = '$_baseUrl/api/v1/user/me/';
  static const String signInWithSocial = '$_baseUrl/api/v1/user/login_with_social_network/';
  static const String sendForgotPasswordCode = '$_baseUrl/api/v1/user/send_forgot_password_code/';
  static const String resetPassword = '$_baseUrl/api/v1/user/set_new_password_with_forgot_password/';
  static const String updateProfile = '$_baseUrl/api/v1/user/update/';
  static const String updateAvatar = '$_baseUrl/api/v1/user/update/avatar/';
  static const String createFile = '$_baseUrl/api/v1/file/';
  static const String deleteProfile = '$_baseUrl/api/v1/user/delete_account/';
  static const String explore = '$_baseUrl/api/v1/explore/exp/';
}
