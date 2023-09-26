part of xpress.mkproj;

class AuthAPI extends APIEmulator {
  @override
  io.HttpResponse handleRequest(io.HttpRequest request) {
    return request.response..statusCode = 200;
  }
}
