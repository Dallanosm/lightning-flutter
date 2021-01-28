import 'package:Lightning_talk/domain/model/EventInfo.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';

abstract class RemoteDatasource {
  Future<List<Talk>> getTalks();
  Future<EventInfo> getEventInfo();
}
