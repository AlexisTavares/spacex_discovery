import 'package:json_annotation/json_annotation.dart';

part 'reddit.g.dart';

@JsonSerializable(checked: true)
class Reddit {
  String campaign;

  Reddit({this.campaign});

  factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);
}
