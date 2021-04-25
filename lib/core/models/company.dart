import 'package:json_annotation/json_annotation.dart';

import 'headquarters.dart';

part 'company.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake)
class Company {
  String id;
  int founded;
  String name;
  String ceo;
  int employees;
  String summary;
  Headquarters headquarters;

  Company();

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
