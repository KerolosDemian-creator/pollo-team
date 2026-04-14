import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pollo/core/api/api_endpoints.dart';
import 'package:pollo/core/api/api_failure.dart';
import 'package:pollo/core/api/api_service.dart';
import 'package:pollo/core/api/dio_factory.dart';
import 'package:pollo/core/shared_pref/shared_pref_helper.dart';
import 'package:pollo/features/auth/data/models/response_model.dart';
import 'package:pollo/features/auth/data/repos/auth_repo/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final apiService = ApiService(dio: DioFactory.instance);

  @override
  @override
  Future<Either<Failure, ResponseModel>> login({
    required String identifier,
    required String password,
  }) async {
    try {
      final response = await apiService.post(
        endPoint: ApiEndpoints.login,
        body: {'identifier': identifier, 'password': password},
      );

      if (response is Map && response['code'] == 401) {
        return left(
            ServerFailure(_mapAuthMessage(response['message']?.toString())));
      }

      final user = ResponseModel.fromMap(response);

      await SharedPrefHelper.setData(
          key: SharedPrefKeys.token, value: user.token);
      DioFactory.setTokenAfterLogin(user.token);

      return right(user);
    } on DioException catch (e) {
      final failure = ServerFailure.fromDioException(e);
      return left(ServerFailure(_mapAuthMessage(failure.message)));
    } catch (e) {
      print("Login Catch Error: ${e.runtimeType} -> $e");
      return left(
          const ServerFailure("Invalid response format. Please try again."));
    }
  }

  @override
  Future<Either<Failure, ResponseModel>> signUp({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await apiService.post(
        endPoint: ApiEndpoints.signUp,
        body: {
          'first_name': name,
          'last_name': 'Account',
          'email': email,
          'phone': phone,
          'password': password,
          'password_confirmation': confirmPassword,
        },
      );
      return right(ResponseModel.fromMap(response));
    } on DioException catch (e) {
      final failure = ServerFailure.fromDioException(e);
      return left(ServerFailure(_mapAuthMessage(failure.message)));
    } catch (e) {
      return left(
          const ServerFailure("Registration failed. Please try again."));
    }
  }

  String _mapAuthMessage(String? message) {
    if (message == null || message.isEmpty) {
      return 'Invalid email or password. Please try again.';
    }

    final lower = message.toLowerCase();

    if (lower.contains('unauthorised') ||
        lower.contains('unauthorized') ||
        lower.contains('invalid')) {
      return 'Invalid email or password. Please try again.';
    }

    if (lower.contains('taken') || lower.contains('already registered')) {
      return 'This email is already registered.';
    }

    if (lower.contains('connection') ||
        lower.contains('network') ||
        lower.contains('socket')) {
      return 'Please check your internet connection.';
    }

    return message;
  }
}
