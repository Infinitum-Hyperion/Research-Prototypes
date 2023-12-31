part of xpress;

class HomeView extends StatelessWidget {
  final String currentTemp;

  const HomeView({
    required this.currentTemp,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    launchStopwatch.stop();
    print('stopping');
    datahouse.publishTo(
      channel: launchDurTeleChannel,
      item: TelemetryItem(
        systemId: systemId,
        payload:
            MethodInvocationReport(executionDuration: launchStopwatch.elapsed),
      ),
    );
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'XPress Blog',
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 80,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              "Current temp:$currentTemp",
              style: const TextStyle(
                color: Colors.cyan,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/public-page');
              },
              child: const Text('Public Page'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                if (isAuthenticatedAsMember) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MemberOnlyBlog(),
                    ),
                  );
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => LoginView(),
                    ),
                  );
                }
              },
              child: const Text('Special Editions'),
            ),
          ],
        ),
      ),
    );
  }
}
