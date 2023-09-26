library xpress.mkproj;

import 'package:thp_autocloud/autocloud_sdk.dart';
import 'dart:math';
import 'dart:html';
import 'dart:io' as io;

part 'auth_api.dart';
part './cells.dart';
part './goals.dart';

const String systemId = 'xpress';

final Observatory observatory = Observatory(
  datahouse: Datahouse(),
  contextMonitor: ContextMonitor(),
  logMonitor: LogMonitor(),
);

final AuthAPI authAPI = AuthAPI();
final WeatherRequestCell weatherRequestCell =
    WeatherRequestCell(observatory: observatory);
final Network network = Network();

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString() => String.fromCharCodes(Iterable.generate(
    8, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
