part of xpress.mkproj;

class WeatherRequestCell extends AutonomicCell {
  late AutonomicComponent<void, Future<String>> _component;

  WeatherRequestCell()
      : super(
          elementId: getRandomString(),
          cellLabel: 'weather_request_cell',
          systemId: systemId,
        ) {
    _component = AutonomicComponent(
      cell: this,
      elementId: getRandomString(),
      systemId: systemId,

      /// This is how you decalare a method with no arguments
      action: ([void input]) async {
        return await network.httpRequest(
          () async {
            return await HttpRequest.getString(
                "https://6cd49fe1-6247-42d9-9f93-b10dfd48be0a.mock.pstmn.io/weather");
          },
          configs: const HttpRequestConfigs(
            delay: Duration(seconds: 2),
          ),
        );
      },
    );
  }

  @override
  AutonomicComponent<void, Future<String>> get component => _component;
}
