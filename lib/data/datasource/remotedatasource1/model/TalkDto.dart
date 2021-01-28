import 'package:Lightning_talk/domain/model/Talk.dart';

class TalkDto {
  int capacity;
  String title;

  TalkDto({this.capacity, this.title});

  factory TalkDto.fromJson(Map<String, dynamic> json) {
    return TalkDto(
      capacity: json['capacity'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['capacity'] = this.capacity;
    data['title'] = this.title;
    return data;
  }

  Talk toModel() {
    return Talk(title: title, capacity: capacity);
  }
}
