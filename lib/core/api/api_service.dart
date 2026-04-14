import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;

  Future<dynamic> post({
    required String endPoint,
    required dynamic body,
  }) async {
    try {
      final response = await _dio.post(endPoint, data: body);
      return response.data;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> get({required String endPoint}) async {
    try {
      final response = await _dio.get(endPoint);
      return response.data;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
