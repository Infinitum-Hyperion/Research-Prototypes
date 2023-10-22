library xpress.mkproj;

import 'package:thp_autocloud/autocloud_sdk.dart';
import 'dart:math';
import 'dart:html';

part 'auth_api.dart';
part './cells.dart';
part './goals.dart';

const String systemId = 'xpress';

////////////////////////////////
/// Autonomic Elements
////////////////////////////////

final Observatory observatory = Observatory(
  datahouse: datahouse,
  contextMonitor: ContextMonitor(),
  logMonitor: LogMonitor(),
);

final Datahouse datahouse = Datahouse()
  ..addChannel(channel: buildObsTeleChannel)
  ..addChannel(channel: launchDurTeleChannel);

final WeatherRequestCell weatherRequestCell =
    WeatherRequestCell(observatory: observatory);
final LaunchDurationSensoryCell launchDurationSensoryCell =
    LaunchDurationSensoryCell(observatory: observatory);
final Network network = Network();

final MethodInvocationObserver buildInvocationObserver =
    MethodInvocationObserver(
  observatory: observatory,
  channel: buildObsTeleChannel,
  elementId: 'public_blog_build_obs',
  systemId: systemId,
);

final MethodInvocationObserver launchObserver = MethodInvocationObserver(
  observatory: observatory,
  channel: launchDurTeleChannel,
  elementId: 'launch_obs',
  systemId: systemId,
);

////////////////////////////////
/// Telemetry Channels
////////////////////////////////

final buildObsTeleChannel =
    TelemetryChannel<MethodInvocationReport>(systemId: systemId);
final launchDurTeleChannel =
    TelemetryChannel<MethodInvocationReport>(systemId: systemId);

////////////////////////////////
/// Others
////////////////////////////////
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString() => String.fromCharCodes(Iterable.generate(
    8, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
