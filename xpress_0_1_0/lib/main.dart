library xpress;

import 'package:flutter/material.dart';

part './home_view.dart';
part './public_view.dart';
part './login_view.dart';
part './member_only_view.dart';
part './public_blog.dart';
part './member_only_blog.dart';

void main() {
  runApp(const XPressApp());
}

class XPressApp extends StatelessWidget {
  const XPressApp({super.key});

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
        '/home': (context) => HomeView(),
        '/public-page': (context) => PublicView(),
        '/member-only-page': (context) => MemberOnlyView(),
        '/login': (context) => LoginView(),
        '/public-blog': (context) => PublicBlog(),
      },
    );
  }
}
