library xpress.mkproj;

import 'package:thp_markhor/markhor.dart';
import 'dart:io';

part 'auth_api.dart';

final MarkhorWorkstation workstation = MarkhorWorkstation();
final Observatory observatory = Observatory(workstation: workstation);
final AuthAPI authAPI = AuthAPI(workstation: workstation);
final Network network = Network(workstation: workstation);