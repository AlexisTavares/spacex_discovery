// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reddit _$RedditFromJson(Map<String, dynamic> json) {
  return $checkedNew('Reddit', json, () {
    final val = Reddit(
      campaign: $checkedConvert(json, 'campaign', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$RedditToJson(Reddit instance) => <String, dynamic>{
      'campaign': instance.campaign,
    };
