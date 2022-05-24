// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      access: json['access'] as String?,
      status: json['status'] as bool?,
      refresh: json['refresh'] as String?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
      'status': instance.status,
    };
