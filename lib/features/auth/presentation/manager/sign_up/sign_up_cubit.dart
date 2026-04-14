import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/data/repos/auth_repo/auth_repo.dart';
import 'package:pollo/features/auth/presentation/manager/sign_up/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;

  SignUpCubit({required this.authRepo}) : super(const SignUpState.initial());

  Future<void> signUp(
      {required String name,
      required String email,
      required String phone,
      required String password,
      required String confirmPassword}) async {
    final result = await authRepo.signUp(
        name: name,
        email: email,
        phone: phone,
        password: password,
        confirmPassword: confirmPassword);
    result.fold((failure) {
      emit(SignUpState.error(failure.message));
    }, (user) {
      emit(SignUpState.loaded(user));
    });
  }
}
