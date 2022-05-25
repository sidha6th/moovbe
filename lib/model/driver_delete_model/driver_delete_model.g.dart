// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_delete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverAddModel _$DriverAddModelFromJson(Map<String, dynamic> json) =>
    DriverAddModel(
      licenseNo: json['license_no'] as String,
      name: json['name'] as String,
      mobile: json['mobile'] as String?,
    );

Map<String, dynamic> _$DriverAddModelToJson(DriverAddModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'license_no': instance.licenseNo,
    };
