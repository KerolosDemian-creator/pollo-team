import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollo/features/auth/data/models/response_model.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.loaded(ResponseModel signUpResponse) = _Loaded;
  const factory SignUpState.error(String message) = _Error;
}
