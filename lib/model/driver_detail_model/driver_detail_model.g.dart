// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverDetailModel _$DriverDetailModelFromJson(Map<String, dynamic> json) =>
    DriverDetailModel(
      id: json['id'] as int?,
      licenseNo: json['license_no'] as String?,
      mobile: json['mobile'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DriverDetailModelToJson(DriverDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'license_no': instance.licenseNo,
    };
