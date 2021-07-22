import 'package:afarim/en/Login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor:Color(0xFFf7f7f7),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 90,
              left: 41,
              bottom: 82,
              right: 58,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex:0 ,
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.end ,
                      children: [
                        Expanded(
                          child: Container(
                            width: 110,
                            height: 85,
                            child: Text('Ready to flight?',
                              style: GoogleFonts.cairo(
                                textStyle: TextStyle(
                                  height: 1,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 29,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(child:Image.asset('icons/splash-screen-plane.png',
                          ),
                            height: 173.9,
                            width: 173.9,),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height:45 ,
                    child: Text('We search the best and cheaper options base on your needs',
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: Color(0xFF5b6180),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          height: 0.9,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 129,
                    height: 39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFF006633),
                    ),
                    child: MaterialButton(onPressed: (){
                      _navigateToNextScreen(context);
                    },
                      child: Text('Get Started',
                        style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(child:Image.asset('icons/splash-screen-family-travel.png'),
                      height: 474,
                      width: 281,),
                  ),
                ],
              ),
            ),
          ),
        );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}





//images/splash-screen-family-travel