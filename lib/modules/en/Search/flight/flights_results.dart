import 'package:afarim/modules/en/Search/flight/choose_seat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightResult extends StatefulWidget {
  const FlightResult({Key? key}) : super(key: key);

  @override
  _FlightResultState createState() => _FlightResultState();
}

class _FlightResultState extends State<FlightResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color(0xff006633)
      ,
        title: // Flights
        Center(
          child: Text(
              "Flights",
              style: const TextStyle(
                  color:  const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0
              ),
              textAlign: TextAlign.center
          ),
        ),
        actions: [
          Icon(Icons.reorder),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Container(
              width: double.infinity,
              height: 75,
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
                          "PAR",
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
                          "TUN",
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
                          "Round-trip",
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
                      "1 Adult - 20 Jul - 26 Jul",
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
          MaterialButton(
            onPressed: (){},
            child: Container(
              child: // Cheapest
              Center(
                child: Text(
                    "Cheapest",
                    style: const TextStyle(
                        color:  const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cairo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 12.0
                    ),
                    textAlign: TextAlign.center
                ),
              ),
                width: 61,
                height: 27,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(5)
                    ),
                    color: const Color(0xff006633)
                )
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              MaterialButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ChooseSeatScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      width: 330,
                      height: 260,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(6)
                          ),
                          boxShadow: [BoxShadow(
                              color: const Color(0x3b000000),
                              offset: Offset(0,3),
                              blurRadius: 6,
                              spreadRadius: 0
                          )] ,
                          color: const Color(0xffffffff)
                      ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [

                              Container(
                                child: Image(image: AssetImage('icons/tunisair.png'),
                              fit: BoxFit.fill,),
                                width:90 ,
                                height: 90,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    // 01:10 PM --- Direct --- 02:50 PM
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 14.0
                                                  ),
                                                  text: "01:10 PM ---"),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff999966),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 14.0
                                                  ),
                                                  text: "Direct "),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 14.0
                                                  ),
                                                  text: " --- 02:50 PM")
                                            ]
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    RichText(
                                        text: TextSpan(

                                            children: [
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 12.0
                                                  ),
                                                  text: "PAR  "),
                                              TextSpan(
                                                style: const TextStyle(
                                                    color:  const Color(0xff313131),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Cairo",
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 10.0
                                                ),
                                                  text: "Flight duration: 02h 40m",
                                              ),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 12.0
                                                  ),
                                                  text: "  TUN"),
                                            ]
                                        )
                                    ),
                                    SizedBox(height: 15,),
                                    RichText(
                                        text: TextSpan(

                                            children: [
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 10.0
                                                  ),
                                                  text: "Tunisair "),
                                              TextSpan(
                                                style: const TextStyle(
                                                    color:  const Color(0xff313131),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Cairo",
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 10.0
                                                ),
                                                text: " | ",
                                              ),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 10.0
                                                  ),
                                                  text: "MS-2934"),
                                            ]
                                        )
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                              width: double.infinity,
                              height: 0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:Colors.grey,
                                      width: 0.5
                                  )
                              )
                          ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [

                              Container(
                                child: Image(image: AssetImage('icons/tunisair.png'),
                                  fit: BoxFit.fill,),
                                width:90 ,
                                height: 90,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    // 01:10 PM --- Direct --- 02:50 PM
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 14.0
                                                  ),
                                                  text: "01:10 PM ---"),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff999966),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 14.0
                                                  ),
                                                  text: "Direct "),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 14.0
                                                  ),
                                                  text: " --- 02:50 PM")
                                            ]
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    RichText(
                                        text: TextSpan(

                                            children: [
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 12.0
                                                  ),
                                                  text: "PAR  "),
                                              TextSpan(
                                                style: const TextStyle(
                                                    color:  const Color(0xff313131),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Cairo",
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 10.0
                                                ),
                                                text: "Flight duration: 02h 40m",
                                              ),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 12.0
                                                  ),
                                                  text: "  TUN"),
                                            ]
                                        )
                                    ),
                                    SizedBox(height: 15,),
                                    RichText(
                                        text: TextSpan(

                                            children: [
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 10.0
                                                  ),
                                                  text: "Tunisair "),
                                              TextSpan(
                                                style: const TextStyle(
                                                    color:  const Color(0xff313131),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Cairo",
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 10.0
                                                ),
                                                text: " | ",
                                              ),
                                              TextSpan(
                                                  style: const TextStyle(
                                                      color:  const Color(0xff313131),
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Cairo",
                                                      fontStyle:  FontStyle.normal,
                                                      fontSize: 10.0
                                                  ),
                                                  text: "MS-2934"),
                                            ]
                                        )
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: double.infinity,
                            height: 0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:Colors.grey,
                                    width: 0.5
                                )
                            )
                            ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              // Total price
                              Expanded(
                                child: Text(
                                    "Total price",
                                    style: const TextStyle(
                                        color:  const Color(0xff313131),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Cairo",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 12.0
                                    ),
                                    textAlign: TextAlign.left,
                                ),
                              ),
                              // $570
                              Text(
                                  "\$570",
                                  style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 12.0
                                  ),
                                  textAlign: TextAlign.center
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),


        ],
      ),

    );
  }
}
