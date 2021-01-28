import 'package:Lightning_talk/domain/model/Talk.dart';

abstract class RemoteDatasource2 {
  Future<List<Talk>> getTalks();

  Future<String> getEventDate();
}
