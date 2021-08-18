import 'package:afarim/modules/en/Search/flight/boarding_pass.dart';
import 'package:afarim/modules/en/Search/flight/review_your_trip.dart';
import 'package:flutter/material.dart';
import 'layers/home_layer.dart';
import 'modules/splash_screen/splash_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //BoardingPass(),
      // ReviewYourTrip(),
      HomeLayer(),
      //SplashScreen(),
    );
  }
}
//HomeLayer()