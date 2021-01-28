import 'package:Lightning_talk/domain/model/Talk.dart';

abstract class RemoteDatasource1 {
  Future<List<Talk>> getTalks();

  Future<String> getEventTitle();
}
