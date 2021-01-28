import 'package:Lightning_talk/data/datasource/RemoteDatasource.dart';
import 'package:Lightning_talk/domain/model/EventInfo.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';
import 'package:Lightning_talk/domain/repository/Repository.dart';

class CommonRepository extends Repository {
  final RemoteDatasource remoteDatasource;

  CommonRepository(this.remoteDatasource);

  @override
  Future<List<Talk>> getTalks() {
    return remoteDatasource.getTalks();
  }

  @override
  Future<EventInfo> getEventInfo() async {
    return remoteDatasource.getEventInfo();
  }
}
