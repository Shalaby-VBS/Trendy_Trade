// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      email: json['email'] as String?,
      userName: json['fullName'] as String?,
      token: json['token'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.userName,
      'token': instance.token,
      'role': instance.role,
    };
