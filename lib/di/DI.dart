import 'package:Lightning_talk/data/datasource/CommonRemoteDatasource.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource1/RemoteDatasource1Impl.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource1/RemoteDatasource1Mock.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource2/RemoteDatasource2Impl.dart';
import 'package:Lightning_talk/data/datasource/remotedatasource2/RemoteDatasource2Mock.dart';
import 'package:Lightning_talk/data/repository/CommonRepository.dart';
import 'package:Lightning_talk/domain/repository/Repository.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class DI {
  static final Repository repository = CommonRepository(
    CommonRemoteDatasource(
      RemoteDatasource1Mock(),
      RemoteDatasource2Mock(),
    ),
  );
}
