part of xpress;

class AuthAPI extends APIEmulator {
  static const EndpointEmulator authEndpoint = EndpointEmulator(
    endpointUrl: 'https://authapi.com/authenticate',
  );
  const AuthAPI()
      : super(
          endpoints: const [authEndpoint],
        );
}
