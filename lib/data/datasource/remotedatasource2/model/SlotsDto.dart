import 'package:Lightning_talk/data/datasource/remotedatasource2/model/RoomsDto.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';

import 'SlotDto.dart';

class SlotsDto {
  List<SlotDto> slots;

  SlotsDto({this.slots});

  factory SlotsDto.fromJson(Map<String, dynamic> json) {
    return SlotsDto(
      slots: json['slots'] != null
          ? (json['slots'] as List).map((i) => SlotDto.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.slots != null) {
      data['slots'] = this.slots.map((v) => v.toJson()).toList();
    }
    return data;
  }

  List<Talk> toModel(RoomsDto roomsDto) {
    return slots
        .map((slotDto) => slotDto.toModel(
            roomsDto.rooms.firstWhere((room) => room.roomId == slotDto.roomId)))
        .toList();
  }
}
