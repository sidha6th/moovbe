import 'package:moovbe/extra/exports/exports.dart';

part 'bus_detail_model.g.dart';

@JsonSerializable()
class BusModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'seat_count')
  String? seatCount;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'driver')
  String? driver;

  BusModel({
    this.id,
    this.name,
    this.image,
    this.seatCount,
    this.type,
    this.driver,
  });
  BusModel.req({
    required this.id,
    required this.name,
    required this.image,
    required this.seatCount,
    required this.type,
    required this.driver,
  });

  BusModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    seatCount = json['seat_count'];
    type = json['type'];
    driver = json['driver'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['seat_count'] = seatCount;
    data['type'] = type;
    data['driver'] = driver;
    return data;
  }
}

// class BusModel {
//   @JsonKey(name: 'id')
//   final String? id;
//   @JsonKey(name: 'name')
//   final String? name;
//   @JsonKey(name: 'image')
//   final String? image;
//   @JsonKey(name: 'seat_count')
//   final String? seatCount;
//   @JsonKey(name: 'type')
//   final String? type;
//   @JsonKey(name: 'driver')
//   final String? driver;
//   BusModel({
//     this.driver,
//     this.id,
//     this.image,
//     this.name,
//     this.seatCount,
//     this.type,
//   });
//   static BusModel fromJson(Map<String, dynamic> json) => BusModel(
//         name: json['name'],
//         id: json['id'],
//         image: json['image'],
//         seatCount: json['seat_count'],
//         type: json['type'],
//         driver: json['driver'],
//       );
// }
