import 'package:json_annotation/json_annotation.dart';

part 'landpad.g.dart';

@JsonSerializable(checked: true)
class Landpad {
  String id;
  String name;
  @JsonKey(name: "full_name")
  String fullName;

  double longitude;
  double latitude;

  @JsonKey(name: "landing_attempts")
  int landingAttempts;

  @JsonKey(name: "landing_successes")
  int landingSuccesses;

  @JsonKey(name: "launches")
  List<String> launchesIds;

  String details;
  String status;

  Landpad();

  factory Landpad.fromJson(Map<String, dynamic> json) =>
      _$LandPadFromJson(json);

  Map<String, dynamic> toJson() => _$LandpadToJson(this);
}
