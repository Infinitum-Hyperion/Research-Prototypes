library xpress.mkproj;

import 'package:thp_autocloud/autocloud_sdk.dart';
import 'dart:io';

part 'auth_api.dart';

final AutocloudWorkstation workstation = AutocloudWorkstation();
final Observatory observatory = Observatory(workstation: workstation);
final AuthAPI authAPI = AuthAPI(workstation: workstation);
final Network network = Network(
  workstation: workstation,
  componentId: 'network1',
);
