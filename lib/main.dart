
import 'package:afarim/en/Login_screen.dart';
import 'package:afarim/en/SignUp_screen.dart';
import 'package:flutter/material.dart';
import 'en/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
