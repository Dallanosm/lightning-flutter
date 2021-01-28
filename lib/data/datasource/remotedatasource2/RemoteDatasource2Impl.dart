import 'dart:convert';

import 'package:Lightning_talk/data/datasource/remotedatasource2/RemoteDatasource2.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource2/model/DateResponseDto.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource2/model/RoomsDto.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource2/model/SlotsDto.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';
import 'package:http/http.dart';

class RemoteDatasource2Impl extends RemoteDatasource2 {
  static final String _endPoint = "https://www.neverlandbari.com/flutter";

  @override
  Future<List<Talk>> getTalks() async {
    var slotsResponse = await get("$_endPoint/talks.json");
    var slots = SlotsDto.fromJson(jsonDecode(slotsResponse.body));
    var roomsResponse = await get("$_endPoint/rooms.json");
    var rooms = RoomsDto.fromJson(jsonDecode(roomsResponse.body));
    return slots.toModel(rooms);
  }

  @override
  Future<String> getEventDate() async {
    var response = await get("$_endPoint/date.json");
    return DateResponseDto.fromJson(jsonDecode(response.body)).date;
  }
}
