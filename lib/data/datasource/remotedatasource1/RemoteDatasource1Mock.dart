import 'package:Lightning_talk/data/datasource/remotedatasource1/RemoteDatasource1.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';

class RemoteDatasource1Mock extends RemoteDatasource1 {
  @override
  Future<List<Talk>> getTalks() {
    return Future.value(
      [
        Talk(title: "Talk mock 1", capacity: 10),
        Talk(title: "Talk mock 2", capacity: 20),
        Talk(title: "Talk mock 3", capacity: 15),
      ],
    );
  }

  @override
  Future<String> getEventTitle() {
    return Future.value("Event info mock");
  }
}
