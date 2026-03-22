import 'package:dio/dio.dart';

class UserServiceApi {
  final Dio dio;
  final String baseUrl = 'https://pollostore.com/api/';
  UserServiceApi({required this.dio});
  Future<void> post({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    final response = await dio.post(endPoint, data: data);
    return response.data;
  }
}
