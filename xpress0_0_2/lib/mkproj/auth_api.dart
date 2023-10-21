part of xpress.mkproj;

class AuthAPI extends APIEmulator {
  AuthAPI({
    required super.channel,
    required super.observatory,
  }) : super(
          elementId: getRandomString(),
          systemId: systemId,
        );

  @override
  io.HttpResponse handleRequest(io.HttpRequest request) {
    return request.response..statusCode = 200;
  }
}
