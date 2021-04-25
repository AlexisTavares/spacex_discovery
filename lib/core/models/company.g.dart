// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return $checkedNew('Company', json, () {
    final val = Company();
    $checkedConvert(json, 'id', (v) => val.id = v as String);
    $checkedConvert(json, 'founded', (v) => val.founded = v as int);
    $checkedConvert(json, 'name', (v) => val.name = v as String);
    $checkedConvert(json, 'ceo', (v) => val.ceo = v as String);
    $checkedConvert(json, 'employees', (v) => val.employees = v as int);
    $checkedConvert(json, 'summary', (v) => val.summary = v as String);
    $checkedConvert(
        json,
        'headquarters',
        (v) => val.headquarters = v == null
            ? null
            : Headquarters.fromJson(v as Map<String, dynamic>));
    return val;
  });
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'founded': instance.founded,
      'name': instance.name,
      'ceo': instance.ceo,
      'employees': instance.employees,
      'summary': instance.summary,
      'headquarters': instance.headquarters?.toJson(),
    };
