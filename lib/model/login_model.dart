import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  @JsonKey(name: 'refresh')
  final String? refresh;
  @JsonKey(name: 'access')
  final String? access;
  @JsonKey(name: 'status')
  final bool? status;
  LoginModel({
    this.access,
    this.status,
    this.refresh,
  });
  LoginModel.login({
    required this.access,
    required this.status,
    required this.refresh,
  });
 static LoginModel fromJson(Map<String, dynamic> json) => LoginModel(
        access: json['access'],
        refresh: json['refresh'],
        status: json['status'],
      );
}
