import 'package:Lightning_talk/data/datasource/remotedatasource2/model/RoomDto.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';

class SlotDto {
  int roomId;
  String title;

  SlotDto({this.roomId, this.title});

  factory SlotDto.fromJson(Map<String, dynamic> json) {
    return SlotDto(
      roomId: json['roomId'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roomId'] = this.roomId;
    data['title'] = this.title;
    return data;
  }

  Talk toModel(RoomDto roomDto) {
    return Talk(
      title: title,
      capacity: (roomDto != null) ? int.parse(roomDto.size) : 0,
    );
  }
}
