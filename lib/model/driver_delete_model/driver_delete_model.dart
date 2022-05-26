import 'package:moovbe/extra/exports/exports.dart';

part 'driver_delete_model.g.dart';

@JsonSerializable()
class DriverAddModel {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'mobile')
  final String? mobile;
  @JsonKey(name: 'license_no')
  final String licenseNo;

  DriverAddModel({
    required this.licenseNo,
    required this.name,
    this.mobile,
  });
  Map<String, dynamic> toJson() => {
        'name': name,
        'mobile': mobile,
        'license_no': licenseNo,
      };
}
