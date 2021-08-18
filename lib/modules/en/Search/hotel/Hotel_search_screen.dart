import 'package:afarim/modules/en/Search/hotel/Select_rooms_screen.dart';
import 'package:afarim/modules/en/Search/hotel/hotels_screen.dart';
import 'package:afarim/modules/en/Search/hotel/search_hotels_result.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HotelSearchScreen extends StatefulWidget {
  const HotelSearchScreen({Key? key}) : super(key: key);

  @override
  _HotelSearchScreenState createState() => _HotelSearchScreenState();
}

class _HotelSearchScreenState extends State<HotelSearchScreen> {
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
    return Container(
      color: const Color(0xfff7f7f7),
      child:Expanded(
        child: Container(
          width: double.infinity,
          height: 350,
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
          child: Column(
            children: [
              SizedBox(
                height: 10,

              ),
              //chose country and city
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HotelsScreen()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 49,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(5)
                        ),
                        border: Border.all(
                            color: const Color(0xff707070),
                            width: 0.5
                        ),
                        color: const Color(0xffffffff)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.location_on,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Select country,city",
                            style: const TextStyle(
                                color:  const Color(0xff313131),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Cairo",
                                fontStyle:  FontStyle.normal,
                                fontSize: 13.0
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_sharp,
                        ),



                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,

              ),
              //2 button to chose date
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: Stack(
                  alignment: Alignment.center,

                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap:(){
                              setState(() {
                                _chekInDate();
                              });
                            },
                            child: Container(
                              width: 154,
                              height: 93,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),

                                  ),
                                  border: Border.all(
                                      color: const Color(0xff707070),
                                      width: 0.5
                                  ),
                                  color: const Color(0xffffffff)
                              ),
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
                                            "Check-in",
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
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                _chekOutDate();
                              });
                            },
                            child: Container(
                              width: 154,
                              height: 93,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),

                                  ),
                                  border: Border.all(
                                      color: const Color(0xff707070),
                                      width: 0.5
                                  ),
                                  color: const Color(0xffffffff)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:



                                Row(
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
                                            "Check-in",
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
                      ],
                    ),
                    Container(
                      child: Transform.rotate(
                          angle: 24.5,
                          child: Icon(Icons.nightlight_round,)),
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,

              ),
              //button chose rooms
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){

                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SelectRoomsScreen()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 49,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(5)
                        ),
                        border: Border.all(
                            color: const Color(0xff707070),
                            width: 0.5
                        ),
                        color: const Color(0xffffffff)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image(image:AssetImage("icons/room.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "1 Room  2 Passengers",
                            style: const TextStyle(
                                color:  const Color(0xff313131),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Cairo",
                                fontStyle:  FontStyle.normal,
                                fontSize: 13.0
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_sharp,
                        ),



                      ],
                    ),
                  ),
                ),
              ),
              //button 'send'
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>SearchHotelsResult()),
                        );
                      },
                      child: Center(
                        child: Text(
                          "Search",
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
        ),
      ),

    );
  }
}
