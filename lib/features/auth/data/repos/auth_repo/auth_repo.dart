import 'package:dartz/dartz.dart';
import 'package:pollo/core/api/api_failure.dart';
import 'package:pollo/features/auth/data/models/response_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, ResponseModel>> login({
    required String identifier,
    required String password,
  });
  Future<Either<Failure, ResponseModel>> signUp({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
  });
}
