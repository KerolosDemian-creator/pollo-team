import 'package:dartz/dartz.dart';
import 'package:pollo/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> login();
}
