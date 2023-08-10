part of xpress.mkproj;

class AuthAPI extends APIEmulator {
  AuthAPI({
    required super.workstation,
    super.port,
  });

  @override
  HttpResponse handleRequest(HttpRequest request) {
    return request.response..statusCode = 200;
  }
}
