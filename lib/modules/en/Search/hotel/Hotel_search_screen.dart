import 'package:afarim/modules/en/Search/hotel/Select_rooms_screen.dart';
import 'package:afarim/modules/en/Search/hotel/hotels_screen.dart';
import 'package:afarim/modules/en/Search/hotel/select_date_screen.dart';
import 'package:flutter/material.dart';
class HotelSearchScreen extends StatefulWidget {
  const HotelSearchScreen({Key? key}) : super(key: key);

  @override
  _HotelSearchScreenState createState() => _HotelSearchScreenState();
}

class _HotelSearchScreenState extends State<HotelSearchScreen> {


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
                            onTap: (){

                              Navigator.push(context,MaterialPageRoute(builder: (context)=>DateScreen()),
                              );
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
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                        textAlign: TextAlign.center
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
                        ),
                        Expanded(
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
                              padding: const EdgeInsets.only(
                                left: 40,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,

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
                                      textAlign: TextAlign.center
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
                      onPressed: (){},
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
