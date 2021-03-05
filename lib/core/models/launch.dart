import 'package:json_annotation/json_annotation.dart';

part 'launch.g.dart';

@JsonSerializable(checked: true)
class Launch {
  String name;
  String launchDate;

  Launch({this.name, this.launchDate});

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);
}
