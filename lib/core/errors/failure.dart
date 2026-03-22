import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromdio(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection timeout with API server");

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send timeout with API server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive timeout with API server");

      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "Bad SSL certificate");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response?.statusCode,
          dioError.response?.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request to API server was cancelled");

      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "No Internet Connection");

      case DioExceptionType.unknown:
        return ServerFailure(errMessage: "Unexpected error occurred");
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errMessage: response['message'] ?? "Unauthorized request",
      );
    } else if (statusCode == 404) {
      return ServerFailure(errMessage: "Your request was not found");
    } else if (statusCode == 500) {
      return ServerFailure(errMessage: "Internal Server Error");
    } else {
      return ServerFailure(
        errMessage: "Something went wrong, please try again",
      );
    }
  }
}
