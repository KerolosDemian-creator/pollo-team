import 'package:dartz/dartz.dart';
import 'package:pollo/core/api/user_service_api.dart';
import 'package:pollo/core/errors/failure.dart';
import 'package:pollo/core/models/user_model/user_model.dart';
import 'package:pollo/features/auth/data/repo/auth_repo/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final UserServiceApi userServiceApi;
  AuthRepoImp({required this.userServiceApi});
  @override
  Future<Either<Failure, UserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final json = await userServiceApi.post(
        endPoint: 'v1/login',
        data: {
          "email": email,
          "password": password,
        },
      );

      final user = UserModel.fromJson(json['merchant']);

      return right(user);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}