import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? email;
  @JsonKey(name: 'fullName')
  String? userName;
  String? token;
  String? role;

  LoginResponse({
    this.email,
    this.userName,
    this.token,
    this.role,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
