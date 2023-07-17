library xpress;

import 'dart:html';

import 'package:flutter/material.dart';

part './home_view.dart';
part './public_view.dart';
part './login_view.dart';
part './member_only_view.dart';
part './public_blog.dart';
part './member_only_blog.dart';

void main() async {
  final String res = await HttpRequest.getString(
      "https://6cd49fe1-6247-42d9-9f93-b10dfd48be0a.mock.pstmn.io/weather");

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
        '/member-only-page': (context) => MemberOnlyView(),
        '/login': (context) => LoginView(),
        '/public-blog': (context) => PublicBlog(),
      },
    );
  }
}
