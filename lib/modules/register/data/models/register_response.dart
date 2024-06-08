import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final String? email;
  final String? fullName;
  final String? token;
  final String? role;

  const RegisterResponse({
    this.email,
    this.fullName,
    this.token,
    this.role,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
