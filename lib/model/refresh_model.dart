class RefreshModel {
  final String access;
  final String refresh;
  RefreshModel({required this.access, required this.refresh});
 static RefreshModel fromJson(Map<String, dynamic> json) => RefreshModel(
        access: json['access'],
        refresh: json['refresh'],
      );
}
