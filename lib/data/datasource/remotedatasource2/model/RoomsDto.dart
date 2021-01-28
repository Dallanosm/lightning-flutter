import 'RoomDto.dart';

class RoomsDto {
  List<RoomDto> rooms;

  RoomsDto({this.rooms});

  factory RoomsDto.fromJson(Map<String, dynamic> json) {
    return RoomsDto(
      rooms: json['rooms'] != null
          ? (json['rooms'] as List).map((i) => RoomDto.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rooms != null) {
      data['rooms'] = this.rooms.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
