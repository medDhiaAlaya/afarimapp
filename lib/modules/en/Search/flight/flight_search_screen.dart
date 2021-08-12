import 'package:afarim/modules/en/Search/flight/flights_results.dart';
import 'package:flutter/material.dart';
class FlightScreen extends StatefulWidget {
  const FlightScreen({Key? key}) : super(key: key);

  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Container(
                    child: Center(
                      child: Text(
                        "ONE-WAY",
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 11.0
                        ),
                      ),
                    ),

                    width: double.infinity,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(7)
                        ),
                        boxShadow: [BoxShadow(
                          color: const Color(0x40000000),
                          offset: Offset(0,3),
                          blurRadius: 6,
                          spreadRadius: 0,
                        )] ,
                        color: const Color(0xffffffff)
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Center(
                      child: Text(
                          "ROUND-TRIP",
                          style: const TextStyle(
                              color:  const Color(0xff313131),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Cairo",
                              fontStyle:  FontStyle.normal,
                              fontSize: 11.0
                          ),
                          textAlign: TextAlign.center
                      ),
                    ),
                    width: double.infinity,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(7)
                        ),
                        boxShadow: [BoxShadow(
                          color: const Color(0x40000000),
                          offset: Offset(0,3),
                          blurRadius: 6,
                          spreadRadius: 0,
                        )] ,
                        color: const Color(0xffffffff)
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Center(
                      child: Text(
                          "MULTI-CITY",
                          style: const TextStyle(
                              color:  const Color(0xff313131),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Cairo",
                              fontStyle:  FontStyle.normal,
                              fontSize: 11.0
                          ),
                          textAlign: TextAlign.center
                      ),
                    ),
                    width: double.infinity,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(7)
                        ),
                        boxShadow: [BoxShadow(
                          color: const Color(0x40000000),
                          offset: Offset(0,3),
                          blurRadius: 6,
                          spreadRadius: 0,
                        )] ,
                        color: const Color(0xffffffff)
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            height: 108,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(12)
                ),
                boxShadow: [BoxShadow(
                    color: const Color(0x3b000000),
                    offset: Offset(0,3),
                    blurRadius: 6,
                    spreadRadius: 0
                )] ,
                color: const Color(0xffffffff)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child:Row(
                              children: [
                                Icon(Icons.flight_takeoff),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Text(
                                      "From",
                                      style: const TextStyle(
                                          color:  const Color(0xff313131),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 13.0
                                      ),

                                    )
                                ),

                              ],
                            ),


                          ),
                        ),
                        SizedBox(
                            child:Container(
                                width: double.infinity,
                                height: 0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff5b6180),
                                        width: 0.5
                                    )
                                )
                            )
                        ),
                        Expanded(
                          child: Container(
                            child:Row(
                              children: [
                                Icon(Icons.flight_land),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Text(
                                      "To",
                                      style: const TextStyle(
                                          color:  const Color(0xff313131),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 13.0
                                      ),

                                    )
                                ),

                              ],
                            ),


                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Icon(Icons.swap_vert),
                      onTap: (){
                        print('pressed');
                      },),
                  ),
                ],


              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Container(
                    child: Center(
                      child: Expanded(
                        child: Container(
                          child: Row(

                            children: [
                              SizedBox(width: 10,
                              ),
                              Text(
                                "20",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 18.0
                                ),

                              ),
                              SizedBox(width: 10,
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(

                                    children: [
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xffc4c4c4),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 10.0
                                          ),
                                          text: "Check-in\n"),
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xff999966),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          text: "Jul 2021\n"),

                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xff999966),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          text: "Tuesday"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(7)
                        ),
                        boxShadow: [BoxShadow(
                          color: const Color(0x40000000),
                          offset: Offset(0,3),
                          blurRadius: 6,
                          spreadRadius: 0,
                        )] ,
                        color: const Color(0xffffffff)
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    child: Center(
                      child: Container(
                        width: 154,
                        height: 93,
                        child: Center(
                          child: Row(

                            children: [
                              SizedBox(width: 10,
                              ),
                              Text(
                                "20",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 18.0
                                ),

                              ),
                              SizedBox(width: 10,
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(

                                    children: [
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xffc4c4c4),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 10.0
                                          ),
                                          text: "Check-in\n"),
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xff999966),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          text: "Jul 2021\n"),

                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xff999966),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          text: "Tuesday"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(7)
                        ),
                        boxShadow: [BoxShadow(
                          color: const Color(0x40000000),
                          offset: Offset(0,3),
                          blurRadius: 6,
                          spreadRadius: 0,
                        )] ,
                        color: const Color(0xffffffff)
                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(12)
                ),
                boxShadow: [BoxShadow(
                    color: const Color(0x3b000000),
                    offset: Offset(0,3),
                    blurRadius: 6,
                    spreadRadius: 0
                )] ,
                color: const Color(0xffffffff)
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.male,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        "Passengers and cabin class",
                        style: const TextStyle(
                            color:  const Color(0xffcccccc),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 10.0
                        ),

                      ),
                      Text(
                        "1 Adult - Economy",
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 11.0
                        ),

                      )
                    ],
                  ),
                ),
              ],
            ),

          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:50),
            child: Container(
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>FlightResult()),
                    );

                  },
                  child: Center(
                    child: Text(
                      "Find flights",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Cairo",
                          fontStyle:  FontStyle.normal,
                          fontSize: 16.0
                      ),

                    ),
                  ),
                ),
                width: double.infinity,
                height: 39.611328125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(100)
                    ),
                    color: const Color(0xff006633)
                )
            ),
          ),

        ],

      ),
    );
  }
}
