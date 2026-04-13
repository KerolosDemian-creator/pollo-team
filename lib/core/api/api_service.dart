import 'package:dio/dio.dart';
import 'package:pollo/core/api/api_endpoints.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get("${ApiEndpoints.baseUrl}$endPoint");
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required Map<String, dynamic> body,
  }) async {
    final response = await dio.post(
      "${ApiEndpoints.baseUrl}$endPoint",
      data: body,
    );
    return response.data;
  }
}
