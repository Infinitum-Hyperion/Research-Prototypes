library xpress.mkproj;

import 'package:thp_autocloud/autocloud_sdk.dart';
import 'dart:math';
import 'dart:html';
import 'dart:io' as io;

part 'auth_api.dart';
part './cells.dart';
part './goals.dart';

const String systemId = 'xpress';

////////////////////////////////
/// Autonomic Elements
////////////////////////////////

final Observatory observatory = Observatory(
  datahouse: Datahouse(),
  contextMonitor: ContextMonitor(),
  logMonitor: LogMonitor(),
);

final AuthAPI authAPI = AuthAPI(
  channel: authApiTeleChannel,
  observatory: observatory,
);
final WeatherRequestCell weatherRequestCell =
    WeatherRequestCell(observatory: observatory);
final Network network = Network();

final MethodInvocationObserver buildInvocationObserver =
    MethodInvocationObserver(
  observatory: observatory,
  channel: buildObsTeleChannel,
  elementId: 'public_blog_build_obs',
  systemId: systemId,
);

////////////////////////////////
/// Telemetry Channels
////////////////////////////////

final authApiTeleChannel = TelemetryChannel(systemId: systemId),
    buildObsTeleChannel = TelemetryChannel(systemId: systemId);

////////////////////////////////
/// Others
////////////////////////////////
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString() => String.fromCharCodes(Iterable.generate(
    8, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
