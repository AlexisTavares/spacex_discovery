import 'package:json_annotation/json_annotation.dart';

part 'launchpad.g.dart';

@JsonSerializable(checked: true)
class Launchpad {
  String id;
  String name;
  String full_name;
  double longitude;
  double latitude;
  int launch_attempts;
  int launch_successes;
  List<String> rockets;
  String details;
  String status;

  Launchpad();

  factory Launchpad.fromJson(Map<String, dynamic> json) =>
      _$LaunchPadFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchpadToJson(this);
}
