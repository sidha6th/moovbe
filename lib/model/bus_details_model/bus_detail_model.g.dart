// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusModel _$BusModelFromJson(Map<String, dynamic> json) => BusModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      seatCount: json['seat_count'] as String?,
      type: json['type'] as String?,
      driver: json['driver'] as String?,
    );

Map<String, dynamic> _$BusModelToJson(BusModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'seat_count': instance.seatCount,
      'type': instance.type,
      'driver': instance.driver,
    };
