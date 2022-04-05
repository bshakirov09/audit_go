// Created by Muhammed Tolkinov on 28-December-2021

class ServerFailure {

  static String getFailureMessage({
    required Map<String, dynamic> error,
    required int? statusCode
  }) {
    try {
      if (error['detail'] != null) {
        return error['detail'].toString();
      }
      else {
        return error[error.keys.first][0];
      }
    } catch(e) {
      return 'Something went wrong';
    }
  }

}
