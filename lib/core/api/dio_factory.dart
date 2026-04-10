import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pollo/core/api/api_endpoints.dart';
import 'package:pollo/core/shared_pref/shared_pref_helper.dart';
import 'package:pollo/core/validation/app_functions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static const _defaultTimeOut = Duration(seconds: 160);
  static Dio? _dioInstance;

  static Dio get instance {
    if (_dioInstance == null) {
      throw Exception('DioFactory not initialized. Call initialize() first.');
    }
    return _dioInstance!;
  }

  static Future<void> initialize() async {
    if (_dioInstance != null) return;
    _dioInstance = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: _defaultTimeOut,
        receiveTimeout: _defaultTimeOut,
      ),
    );
    _addAuthInterceptor();
    _addLoggingInterceptor();
  }

  static void _addAuthInterceptor() {
    _dioInstance?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SharedPrefHelper.getString(
            key: SharedPrefKeys.token,
          );
          if (token.isNotEmpty && !AppFunctions.isTokenExpired(token)) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
  }

  static void _addLoggingInterceptor() {
    if (kDebugMode) {
      _dioInstance?.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
        ),
      );
    }
  }

  static Future<void> updateAuthToken(String newToken) async {
    await SharedPrefHelper.setData(key: SharedPrefKeys.token, value: newToken);

    _dioInstance?.interceptors.removeWhere(
      (interceptor) => interceptor is InterceptorsWrapper,
    );
    _addAuthInterceptor();
  }

  static Future<void> clearAuthToken() async {
    await SharedPrefHelper.removeData(key: SharedPrefKeys.token);
    _dioInstance?.interceptors.removeWhere(
      (interceptor) => interceptor is InterceptorsWrapper,
    );
    _addAuthInterceptor();
  }
}
