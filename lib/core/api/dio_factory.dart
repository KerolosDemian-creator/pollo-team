import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pollo/core/api/api_endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static const _defaultTimeOut = Duration(seconds: 160);
  static Dio? _dioInstance;

  static Dio get dio {
    if (_dioInstance == null) {
      throw Exception('Dio instance not initialized. Call initialize() first.');
    }
    return _dioInstance!;
  }

  static Future<void> initialize() async {
    if (_dioInstance != null) return;
    _dioInstance = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: _defaultTimeOut,
        sendTimeout: _defaultTimeOut,
        receiveTimeout: _defaultTimeOut,
      ),
    );
  }

  static void _addAuthInterceptor() {}
  static void _addLoggingInterceptor() {
    if (kDebugMode) {
      _dioInstance?.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseBody: true,
        ),
      );
    }
  }

  static Future<void> updateAuthToken() async {}
  static Future<void> clearAuthToken() async {}
}
