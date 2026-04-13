import 'package:dartz/dartz.dart';
import 'package:pollo/core/api/api_endpoints.dart';
import 'package:pollo/core/api/api_failure.dart';
import 'package:pollo/core/api/api_service.dart';
import 'package:pollo/core/shared_pref/shared_pref_helper.dart';
import 'package:pollo/features/auth/data/models/response_model.dart';
import 'package:pollo/features/auth/data/repos/auth_repo/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final ApiService apiService;

  AuthRepoImp({required this.apiService});
  @override
  Future<Either<Failure, ResponseModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.post(
        endPoint: ApiEndpoints.login,
        body: {
          'email': email,
          'password': password,
        },
      );
      final loginResponse = ResponseModel.fromMap(response);
      await SharedPrefHelper.setData(
          key: SharedPrefKeys.token, value: loginResponse.token);
      return right(loginResponse);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
