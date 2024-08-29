import 'package:flutter/material.dart';
import 'package:mysample/home.dart';
import 'package:mysample/login.dart';
import 'package:mysample/register.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      routes: {
        '/': (context) => LoginScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => BottomNavigationBarExampleApp(),
      },
      // theme: ThemeData(
      //   fontFamily: 'San Francisco',
      // ),
    );
  }
}
