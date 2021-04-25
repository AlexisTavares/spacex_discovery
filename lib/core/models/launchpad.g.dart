// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launchpad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launchpad _$LaunchPadFromJson(Map<String, dynamic> json) {
  return $checkedNew('LaunchPad', json, () {
    final val = Launchpad();
    $checkedConvert(json, 'id', (v) => val.id = v as String);
    $checkedConvert(json, 'name', (v) => val.name = v as String);
    $checkedConvert(json, 'full_name', (v) => val.full_name = v as String);
    $checkedConvert(
        json, 'longitude', (v) => val.longitude = (v as num)?.toDouble());
    $checkedConvert(
        json, 'latitude', (v) => val.latitude = (v as num)?.toDouble());
    $checkedConvert(
        json, 'launch_attempts', (v) => val.launch_attempts = v as int);
    $checkedConvert(
        json, 'launch_successes', (v) => val.launch_successes = v as int);
    $checkedConvert(json, 'rockets',
        (v) => val.rockets = (v as List)?.map((e) => e as String)?.toList());
    $checkedConvert(json, 'details', (v) => val.details = v as String);
    $checkedConvert(json, 'status', (v) => val.status = v as String);
    return val;
  });
}

Map<String, dynamic> _$LaunchpadToJson(Launchpad instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.full_name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'launch_attempts': instance.launch_attempts,
      'launch_successes': instance.launch_successes,
      'rockets': instance.rockets,
      'details': instance.details,
      'status': instance.status,
    };
