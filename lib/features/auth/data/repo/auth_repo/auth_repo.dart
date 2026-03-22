import 'package:dartz/dartz.dart';
import 'package:pollo/core/errors/failure.dart';
import 'package:pollo/core/models/user_model/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> login();
}
