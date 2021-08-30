import 'package:afarim/modules/en/Search/flight/review_your_trip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseSeatScreen extends StatefulWidget {
  const ChooseSeatScreen({Key? key}) : super(key: key);

  @override
  _ChooseSeatScreenState createState() => _ChooseSeatScreenState();
}

class _ChooseSeatScreenState extends State<ChooseSeatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff006633),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff006633),
        title: // Choose a Seat
        Text(
            AppLocalizations.of(context)!.chooseASeat,
            style: const TextStyle(
                color:  const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "Cairo",
                fontStyle:  FontStyle.normal,
                fontSize: 15.0
            ),
            textAlign: TextAlign.left
        ),
    ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 85,
            decoration: BoxDecoration(
                color: const Color(0xff006633)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [

                      // PAR
                      Text(
                          AppLocalizations.of(context)!.par,
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Cairo",
                              fontStyle:  FontStyle.normal,
                              fontSize: 18.0
                          ),
                          textAlign: TextAlign.center
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.compare_arrows,
                        color: Colors.white,),
                      SizedBox(
                        width: 10,
                      ),
                      // TUN
                      Text(
                          AppLocalizations.of(context)!.tun,
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Cairo",
                              fontStyle:  FontStyle.normal,
                              fontSize: 18.0
                          ),
                          textAlign: TextAlign.center
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      // -
                      Text(
                          "-",
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Cairo",
                              fontStyle:  FontStyle.normal,
                              fontSize: 18.0
                          ),
                          textAlign: TextAlign.center
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      // Round-trip
                      Text(
                          AppLocalizations.of(context)!.roundTrip,
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Cairo",
                              fontStyle:  FontStyle.normal,
                              fontSize: 18.0
                          ),
                          textAlign: TextAlign.center
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  // 1 Adult - 20 Jul - 26 Jul
                  Text(
                    AppLocalizations.of(context)!.date,
                    style: const TextStyle(
                        color:  const Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Cairo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 11.0
                    ),

                  ),
                ],
              ),
            ),
          ),
          // Rectangle seat
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(22)
                    ),
                    boxShadow: [BoxShadow(
                        color: const Color(0x3b000000),
                        offset: Offset(0,3),
                        blurRadius: 6,
                        spreadRadius: 0
                    )] ,
                    color: const Color(0xffffffff)
                ),
              child: ListView(
                children: [
                  // Economy class
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        AppLocalizations.of(context)!.economyClass,
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 20.0
                        ),
                        //textAlign: TextAlign.left
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              // Ellipse 40
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                      color: const Color(0xff5b6180)
                                  )
                              ),
                              SizedBox(width: 10,),
                              // Selected
                              Text(
                                  "Selected",
                                  style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 15.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              // Ellipse 40
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:const Color(0xff999966),
                                  )
                              ),
                              SizedBox(width: 10,),
                              // Selected
                              Text(
                                  "Booked Up",
                                  style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 15.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      showGeneralDialog(
                        barrierLabel: "Barrier",
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: Duration(milliseconds: 700),
                        context: context,
                        pageBuilder: (_, __, ___) {
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 200,
                              child: Column(
                                children: [
                                  MaterialButton(
                                    onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ReviewYourTrip()),);
                                    },
                                    child:Column(
                                      children: [
                                        SizedBox(height: 40,
                                        ),
                                        Container(
                                            child: // Select the same seats
                                            Center(
                                              child: Text(
                                                  AppLocalizations.of(context)!.selectTheSameSeats,
                                                  style: const TextStyle(
                                                      color:  const Color(0xffffffff),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 16.0
                                                  ),
                                                  textAlign: TextAlign.left
                                              ),
                                            ),
                                            width: 257.4888916015625,
                                            height: 39.611328125,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)
                                                ),
                                                color: const Color(0xff006633)
                                            )
                                        ),
                                        SizedBox(height: 20,
                                        ),
                                        // Rectangle 573
                                        Container(
                                          child: // select later
                                          Center(
                                            child: Text(
                                                AppLocalizations.of(context)!.selectLater,
                                                style: const TextStyle(
                                                    color:  const Color(0xff006633),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Cairo",
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 16.0
                                                ),
                                                textAlign: TextAlign.left
                                            ),
                                          ),
                                            width: 257.4888916015625,
                                            height: 39.611328125,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)
                                                ),
                                                border: Border.all(
                                                    color: const Color(0xff006633),
                                                    width: 1
                                                ),
                                                color: const Color(0xffffffff)
                                            )
                                        )
                                      ],
                                    ),


                                  ),
                                ],
                              ),
                              margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          );
                        },
                        transitionBuilder: (_, anim, __, child) {
                          return SlideTransition(
                            position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
                            child: child,
                          );
                        },
                      );
                    },
                    child: Container(
                        child: Row(
                          children: [
                            SizedBox(width: 10,
                            ),

                            // Facilities
                            Text(
                                "Next",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 14.0
                                ),
                                textAlign: TextAlign.center
                            )
                          ],
                        ),
                        width: 272,
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(9)
                            ),
                            border: Border.all(
                                color: const Color(0xff707070),
                                width: 1
                            ),
                            color: const Color(0xffffffff)
                        )
                    ),
                  ),


                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
