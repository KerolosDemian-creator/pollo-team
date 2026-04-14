import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/data/repos/auth_repo/auth_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;

  LoginCubit({required this.authRepo}) : super(const LoginState.initial());

  Future<void> login({
    required String identifier,
    required String password,
  }) async {
    emit(const LoginState.loading());

    final result = await authRepo.login(
      identifier: identifier,
      password: password,
    );

    result.fold(
      (failure) => emit(LoginState.error(failure.message)),
      (user) => emit(LoginState.loaded(user)),
    );
  }
}
