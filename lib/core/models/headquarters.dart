import 'package:json_annotation/json_annotation.dart';

part 'headquarters.g.dart';

@JsonSerializable(checked: true)
class Headquarters {
  String address;
  String city;
  String state;

  Headquarters();

  factory Headquarters.fromJson(Map<String, dynamic> json) =>
      _$HeadquartersFromJson(json);

  Map<String, dynamic> toJson() => _$HeadquartersToJson(this);
}
