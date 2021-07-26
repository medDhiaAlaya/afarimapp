
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(

                children: [
                 Image(image: AssetImage('icons/photo-1548588681-adf41d474533.jpg'),
      ),
                  Text(
                      "Get inspired",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "BeaufortforLOL",
                          fontStyle:  FontStyle.normal,
                          fontSize: 19.0
                      ),
                      textAlign: TextAlign.center
                  ),

                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFF006633),
                ),
              ),

            ],
          ),
        ),
    );
  }
}
