import 'dart:convert';

import 'package:Lightning_talk/data/datasource/remotedatasource1/RemoteDatasource1.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource1/model/EventTitleResponseDto.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource1/model/TalksDto.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:http/http.dart';

class RemoteDatasource1Impl extends RemoteDatasource1 {
  static final _endPoint = FlavorConfig.instance.variables["endPoint"];

  @override
  Future<List<Talk>> getTalks() async {
    var response = await get("$_endPoint/talks.json");
    return TalksDto.fromJson(jsonDecode(response.body)).toModel();
  }

  @override
  Future<String> getEventTitle() async {
    var response = await get("$_endPoint/title.json");
    return EventTitleResponseDto.fromJson(jsonDecode(response.body)).title;
  }
}
