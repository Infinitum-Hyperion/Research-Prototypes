import 'package:thp_autocloud/autocloud_sdk.dart';
import 'dart:io' as io;

const systemId = 'xpress';

class AuthAPI extends APIEmulator {
  AuthAPI()
      : super(
          channel: TelemetryChannel(systemId: systemId),
          elementId: 'auth_api_elem',
          systemId: systemId,
        );

  @override
  io.HttpResponse handleRequest(io.HttpRequest request) {
    return request.response..statusCode = 200;
  }
}
