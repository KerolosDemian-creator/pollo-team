import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pollo/core/validation/local_keys.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(LocaleKeys.connectionTimeout.tr());
      case DioExceptionType.sendTimeout:
        return ServerFailure(LocaleKeys.sendTimeout.tr());
      case DioExceptionType.receiveTimeout:
        return ServerFailure(LocaleKeys.receiveTimeout.tr());
      case DioExceptionType.badCertificate:
        return ServerFailure(LocaleKeys.badCertificate.tr());
      case DioExceptionType.cancel:
        return ServerFailure(LocaleKeys.cancelError.tr());
      case DioExceptionType.connectionError:
        return _isNetworkError(error)
            ? ServerFailure(LocaleKeys.noInternet.tr())
            : ServerFailure(LocaleKeys.connectionError.tr());
      case DioExceptionType.badResponse:
        if (error.response != null) {
          return ServerFailure.fromResponse(
            statusCode: error.response!.statusCode ?? 500,
            data: error.response!.data,
          );
        }
        return ServerFailure(LocaleKeys.unknown.tr());
      case DioExceptionType.unknown:
        return _isNetworkError(error)
            ? ServerFailure(LocaleKeys.noInternet.tr())
            : ServerFailure(LocaleKeys.unknown.tr());
    }
  }

  factory ServerFailure.fromResponse({required int statusCode, dynamic data}) {
    final parsedMessage = _parseResponseMessage(data);

    if (parsedMessage != null) return ServerFailure(parsedMessage);

    switch (statusCode) {
      case 400:
        return ServerFailure(LocaleKeys.badRequest.tr());
      case 401:
        return ServerFailure(LocaleKeys.unauthorized.tr());
      case 403:
        return ServerFailure(LocaleKeys.forbidden.tr());
      case 404:
        return ServerFailure(LocaleKeys.notFound.tr());
      case 500:
        return ServerFailure(LocaleKeys.internal.tr());
      default:
        return ServerFailure('${LocaleKeys.unknown.tr()} ($statusCode)');
    }
  }

  static String? _parseResponseMessage(dynamic data) {
    if (data == null) return null;

    if (data is Map) {
      if (data['message'] != null) return data['message'].toString();

      if (data['errors'] != null) {
        var errors = data['errors'];
        if (errors is Map && errors.isNotEmpty) {
          var firstError = errors.values.first;
          return firstError is List
              ? firstError.first.toString()
              : firstError.toString();
        }
        if (errors is List && errors.isNotEmpty) return errors.first.toString();
      }
    }

    if (data is String && data.isNotEmpty) return data;

    return null;
  }

  static bool _isNetworkError(DioException error) {
    return error.error is SocketException ||
        (error.message?.contains('SocketException') ?? false);
  }
}
