import 'package:flutter/material.dart';
import 'package:task1/counter.dart';
import 'package:task1/home.dart';
import 'package:task1/login.dart';
import 'package:task1/noti.dart';
import 'package:task1/open.dart';
import 'package:task1/profile.dart';
import 'package:task1/recive.dart';
import 'package:task1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // Routes.openRoute: (context) => TodoHome(),
        Routes.openRoute: (context) => const Open(),
        Routes.noti: (context) => const Noti(),
        Routes.profile: (context) => const Profile(),
        Routes.loginRoute: (context) => const Login(),
        Routes.counterRoute: (context) => const Counter(),
        Routes.home: (context) => const Home(),
        Routes.receive: (context) => const Receive(),
      },
    );
  }
}
