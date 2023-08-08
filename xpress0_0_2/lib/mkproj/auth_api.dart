part of xpress.mkproj;

class AuthAPI extends APIEmulator {
  AuthAPI({
    super.port,
  });

  @override
  HttpResponse handleRequest(HttpRequest request) {
    return request.response..statusCode = 200;
  }
}
