import 'package:Lightning_talk/data/datasource/RemoteDatasource.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource1/RemoteDatasource1.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource2/RemoteDatasource2.dart';
import 'package:Lightning_talk/domain/model/EventInfo.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';

class CommonRemoteDatasource extends RemoteDatasource {
  final RemoteDatasource1 remoteDatasource1;
  final RemoteDatasource2 remoteDatasource2;

  CommonRemoteDatasource(this.remoteDatasource1, this.remoteDatasource2);

  @override
  Future<List<Talk>> getTalks() async {
    var future1 = remoteDatasource1.getTalks();
    var future2 = remoteDatasource2.getTalks();
    List<List<Talk>> talks = await Future.wait([future1, future2]);
    return talks.expand((talkList) => talkList).toList();
  }

  @override
  Future<EventInfo> getEventInfo() async {
    String title = await remoteDatasource1.getEventTitle();
    String date = await remoteDatasource2.getEventDate();
    return EventInfo(title: title, date: date);
  }
}
