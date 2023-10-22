library xpress;

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:thp_autocloud/autocloud_sdk.dart';
import 'package:xpress/mkproj/mkproj.dart';

part './home_view.dart';
part './public_view.dart';
part './login_view.dart';
part './public_blog.dart';
part './member_only_blog.dart';

bool isAuthenticatedAsMember = false;

final Stopwatch launchStopwatch = Stopwatch();
void main() async {
  // TODO: insert some code to check that the remote auth API is ready
  final String res = await weatherRequestCell.component.action(null);
  launchDurationSensoryCell.init();
  launchStopwatch.start();
  runApp(XPressApp(
    temp: res,
  ));
}

class XPressApp extends StatefulWidget {
  final String temp;
  const XPressApp({required this.temp, super.key});

  @override
  State<StatefulWidget> createState() => XPressAppState();
}

class XPressAppState extends State<XPressApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.black,
          accentColor: Colors.cyan,
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeView(
              currentTemp: widget.temp,
            ),
        '/public-page': (context) => PublicView(),
        '/login': (context) => LoginView(),
        '/public-blog': (context) => PublicBlog(),
      },
    );
  }
}
