import 'package:Lightning_talk/data/datasource/remotedatasource1/model/TalkDto.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';

class TalksDto {
  List<TalkDto> talks;

  TalksDto({this.talks});

  factory TalksDto.fromJson(Map<String, dynamic> json) {
    return TalksDto(
      talks: json['talks'] != null
          ? (json['talks'] as List).map((i) => TalkDto.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.talks != null) {
      data['talks'] = this.talks.map((v) => v.toJson()).toList();
    }
    return data;
  }

  List<Talk> toModel() {
    return talks.map((talkDto) => talkDto.toModel()).toList();
  }
}
