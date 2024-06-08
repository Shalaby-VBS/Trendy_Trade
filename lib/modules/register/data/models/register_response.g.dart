// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      email: json['email'] as String?,
      fullName: json['fullName'] as String?,
      token: json['token'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'token': instance.token,
      'role': instance.role,
    };
