import 'package:moovbe/extra/exports/exports.dart';

part 'driver_detail_model.g.dart';

@JsonSerializable()
class DriverDetailModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'mobile')
  String? mobile;
  @JsonKey(name: 'license_no')
  String? licenseNo;

  DriverDetailModel({this.id, this.licenseNo, this.mobile, this.name});
  static fromJson(Map<String, dynamic> json) => DriverDetailModel(
        id: json['id'],
        licenseNo: json['license_no'],
        mobile: json['mobile'],
        name: json['name'],
      );
}
