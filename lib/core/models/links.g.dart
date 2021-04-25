// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return $checkedNew('Links', json, () {
    final val = Links();
    $checkedConvert(json, 'webcast', (v) => val.webcast = v as String);
    $checkedConvert(json, 'article', (v) => val.article = v as String);
    $checkedConvert(json, 'wikipedia', (v) => val.wikipedia = v as String);
    $checkedConvert(
        json,
        'patch',
        (v) => val.patch =
            v == null ? null : Patch.fromJson(v as Map<String, dynamic>));
    return val;
  });
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'webcast': instance.webcast,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
      'patch': instance.patch?.toJson(),
    };
