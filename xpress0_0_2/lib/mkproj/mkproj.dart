library xpress.mkproj;

import 'package:thp_markhor/markhor.dart';
import 'dart:io';

part 'auth_api.dart';

final Observatory observatory = Observatory();
final AuthAPI authAPI = AuthAPI();
final Network network = Network();
final MarkhorWorkstation workstation = MarkhorWorkstation()
  ..binObservatory(observatory)
  ..bindAgents([
    network,
    authAPI,
  ]);
