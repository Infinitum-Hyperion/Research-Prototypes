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

void main() async {
  await authAPI.initServer();
  final String res = await weatherRequestCell.component.action(null);

  runApp(XPressApp(
    temp: res,
  ));
}

class XPressApp extends StatelessWidget {
  final String temp;
  const XPressApp({required this.temp, super.key});

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
              currentTemp: temp,
            ),
        '/public-page': (context) => PublicView(),
        '/login': (context) => LoginView(),
        '/public-blog': (context) => PublicBlog(),
      },
    );
  }
}
