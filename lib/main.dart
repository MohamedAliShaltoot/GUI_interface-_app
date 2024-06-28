import 'package:apply_a_project/pages/login.dart';
import 'package:apply_a_project/pages/signUp.dart';
import 'package:apply_a_project/pages/welcome.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => Login(),
        "/signUp": (context) => Signup(),
      },
    );
  }
}
