import 'package:Lightning_talk/data/datasource/remotedatasource2/RemoteDatasource2.dart';
import 'package:Lightning_talk/domain/model/Talk.dart';

class RemoteDatasource2Mock extends RemoteDatasource2 {
  @override
  Future<List<Talk>> getTalks() {
    return Future.value(
      [
        Talk(title: "Charla mock 4", capacity: 10),
        Talk(title: "Charla mock 5", capacity: 20),
        Talk(title: "Charla mock 6", capacity: 15),
      ],
    );
  }

  @override
  Future<String> getEventDate() {
    // TODO: implement getEventDate
    throw UnimplementedError();
  }
}
