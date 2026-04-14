import 'package:pollo/core/models/user_model/user_model.dart';

class ResponseModel {
  final int code;
  final UserModel merchant;
  final String token;

  ResponseModel({
    required this.code,
    required this.merchant,
    required this.token,
  });

  factory ResponseModel.fromMap(Map<String, dynamic> data) => ResponseModel(
        code: int.tryParse(data['code'].toString()) ?? 0,
        merchant: UserModel.fromJson(data['merchant']),
        token: data['token'] ?? '',
      );
}
