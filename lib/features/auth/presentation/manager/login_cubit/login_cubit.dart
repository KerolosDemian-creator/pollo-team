import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/data/repos/auth_repo/auth_repo.dart';
import 'package:pollo/features/auth/presentation/manager/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;
  LoginCubit({required this.authRepo}) : super(const LoginState.initial());

  Future<void> login({required String email, required String password}) async {
    emit(const LoginState.loading());
    final result = await authRepo.login(email: email, password: password);
    result.fold(
      (failure) => emit(LoginState.error(failure.message)),
      (categories) => emit(LoginState.loaded(categories)),
    );
  }
}
