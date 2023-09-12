part of xpress.mkproj;

class AuthAPI extends APIEmulator {
  AuthAPI({
    required super.workstation,
    super.port,
  }) : super(componentId: 'auth_api');

  @override
  io.HttpResponse handleRequest(io.HttpRequest request) {
    return request.response..statusCode = 200;
  }
}
