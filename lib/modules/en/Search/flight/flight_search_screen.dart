import 'package:afarim/modules/en/Search/flight/flights_results.dart';
import 'package:afarim/modules/en/Search/hotel/Select_rooms_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:intl/intl.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({Key? key}) : super(key: key);

  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  DateTime chekInDate=DateTime.now();
  DateTime chekOutDate=DateTime.now();
  void _chekInDate(){
    showDatePicker(context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    ).then((value){
      if(value== null){return;}
      else
        setState(() {
          chekInDate = value;
        });
    }
    );
  }
  void _chekOutDate(){
    showDatePicker(context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    ).then((val){
      if(val== null){return;}
      else
        setState(() {
          chekOutDate = val;
        });
    }
    );
  }

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
                        AppLocalizations.of(context)!.oneWay,

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
                          AppLocalizations.of(context)!.roundTrip,
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
                          AppLocalizations.of(context)!.multiCity,

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
                                      AppLocalizations.of(context)!.from,
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
                                      AppLocalizations.of(context)!.to,
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
                      child: Icon(Icons.swap_vert,
                      color: const Color(0x40000000),),
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
                  onTap: (){
                    setState(() {
                      _chekInDate();
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:



                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${DateFormat.d().format(chekInDate)}",
                                style: const TextStyle(
                                  color:  const Color(0xff313131),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Check-in
                                  Text(

                                      "Return date",
                                      style: const TextStyle(
                                          color:Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 10.0
                                      ),
                                      textAlign: TextAlign.left
                                  ),
                                  Text("${DateFormat.yMMM().format(chekInDate)}",
                                    style: const TextStyle(
                                        color:  const Color(0xff999966),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Cairo",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 14.0
                                    ),),
                                  Text("${DateFormat.EEEE().format(chekInDate)}",
                                    style: const TextStyle(
                                        color:  const Color(0xff999966),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Cairo",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 14.0
                                    ),
                                  ),



                                ],
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
                  onTap: (){
                    setState(() {
                      _chekOutDate();
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Container(
                        width: 154,
                        height: 93,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${DateFormat.d().format(chekOutDate)}",
                                  style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Check-in
                                    Text(

                                        "Departure date",
                                        style: const TextStyle(
                                            color:Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Cairo",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 10.0
                                        ),
                                        textAlign: TextAlign.left
                                    ),
                                    Text("${DateFormat.yMMM().format(chekOutDate)}",
                                      style: const TextStyle(
                                          color:  const Color(0xff999966),
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0
                                      ),),
                                    Text("${DateFormat.EEEE().format(chekOutDate)}",
                                      style: const TextStyle(
                                          color:  const Color(0xff999966),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0
                                      ),
                                    ),



                                  ],
                                ),
                              ],
                            ),
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
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SelectRoomsScreen()),
              );
            },
            child: Container(
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
                  Image(image:AssetImage("icons/passengers.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          AppLocalizations.of(context)!.selectPassengersAndClass,

                         // "Passengers and cabin class",
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
          ),
          SizedBox(
            height: 20,
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
                      AppLocalizations.of(context)!.findFlights,

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
