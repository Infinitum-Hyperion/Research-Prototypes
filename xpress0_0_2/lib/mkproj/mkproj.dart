library xpress.mkproj;

import 'package:thp_autocloud/autocloud_sdk.dart';
import 'dart:math';
import 'dart:html';
import 'dart:io' as io;

part 'auth_api.dart';
part './cells.dart';
part './goals.dart';

const String systemId = 'xpress';
final AutocloudWorkstation workstation = AutocloudWorkstation();
final Observatory observatory = Observatory(workstation: workstation);
final AuthAPI authAPI = AuthAPI(workstation: workstation);
final WeatherRequestCell weatherRequestCell = WeatherRequestCell();
final Network network = Network(
  workstation: workstation,
  componentId: 'network1',
);

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString() => String.fromCharCodes(Iterable.generate(
    8, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
