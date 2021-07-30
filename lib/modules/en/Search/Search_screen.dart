import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isLiked = false;
  bool isHotelPressed = false;
  bool isFlightPressed = false;
  bool hotelIsVisible = false;
  bool searchIsVisible = true;
  bool flightIsVisible = false;

  List<Map<String, String>> popular = [
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Rain Forest',
      "rate": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Lake Louise',
      "rate": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Plitivice Lakes',
      "rate": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Dubai',
      "rate": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Effil Tower',
      "rate": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Pyramids',
      "rate": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'island',
      "rate": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Biza Tower',
      "rate": '4.5'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff7f7f7),

        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[300],
                        hintText: 'Search here...',
                        contentPadding: EdgeInsets.symmetric(vertical: 9),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (){
                                setState(() {
                                  isHotelPressed=true;
                                  hotelIsVisible=!hotelIsVisible;
                                  searchIsVisible=!hotelIsVisible;
                                  flightIsVisible=false;


                                });
                              },
                              child: Container(

                                width: 65,
                                height: 63,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(4)
                                    ),
                                    boxShadow: [BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(0,3),
                                        blurRadius: 6,
                                        spreadRadius: 0,
                                    )] ,
                                    color:(isHotelPressed & hotelIsVisible)? Color(0xff999966):Color(0xffffffff)
                                ),
                                child: Image(image:
                                AssetImage('icons/hotels.png'),
                                color: (isHotelPressed & hotelIsVisible)? Color(0xffffffff):Color(0xff5b6180),),
                              ),
                            ),
                            SizedBox(height: 20,
                            ),
                            Text(
                                "Hotel",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.0
                                ),
                                textAlign: TextAlign.center
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (){

                                setState(() {
                                  isFlightPressed=true;
                                  flightIsVisible=!flightIsVisible;
                                  searchIsVisible=!flightIsVisible;
                                  hotelIsVisible=false;
                                });
                              },
                              child: Container(
                                width: 65,
                                height: 63,
                                decoration: BoxDecoration(
                                  color:(isFlightPressed & flightIsVisible)? Color(0xff999966):Color(0xffffffff),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(4)
                                    ),
                                    boxShadow: [BoxShadow(
                                        color:  Color(0x29000000),
                                        offset: Offset(0,3),
                                        blurRadius: 6,
                                        spreadRadius: 0
                                    )] ,
                                ),
                                child: Image(image:
                                AssetImage('icons/flights.png'),
                                  color: (isFlightPressed & flightIsVisible)? Color(0xffffffff):Color(0xff5b6180),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,
                            ),
                            Text(
                                "Flight",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.0
                                ),
                                textAlign: TextAlign.center
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //search
                  Visibility(
                    visible: searchIsVisible,
                    child: Container(
                      child:
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Text(
                                    "Find your best hotel",
                                    style: const TextStyle(
                                        color:  const Color(0xff313131),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Cairo",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 13.0
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                TextButton(

                                  child: Text("See all",
                                    style: const TextStyle(
                                        color:  const Color(0xff999966),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Cairo",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 12.0
                                    ),
                                  ),
                                  onPressed: (){},
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            StaggeredGridView.countBuilder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: ScrollPhysics(),
                              crossAxisCount: 4,
                              itemCount: popular.length,
                              itemBuilder: (BuildContext context, int index) => Stack(
                                children: [
                                  ClipRRect(
                                    child: Image.asset(popular[index]['img'] ?? ''),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    left: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          popular[index]['name']?? '',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Opacity(
                                            opacity : 0.7099999785423279,
                                            child:   Container(

                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.star,
                                                        color:  const Color(0xfff2bb09),
                                                        size: 20,
                                                      ),
                                                      SizedBox(width: 2,),
                                                      Text(
                                                          popular[index]['rate'] ?? '',
                                                          style: const TextStyle(
                                                              color:  const Color(0xff313131),
                                                              fontWeight: FontWeight.w700,
                                                              fontFamily: "Cairo",
                                                              fontStyle:  FontStyle.normal,
                                                              fontSize: 15
                                                          ),
                                                          textAlign: TextAlign.center
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              width: 60,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(6)
                                                  ),
                                                  color: const Color(0xffffffff)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 1,
                                    right: 4,
                                    child:IconButton(
                                      icon: Icon(Icons.favorite,
                                        color:(isLiked) ? Color(0xffeb147b) : Colors.white,),
                                      onPressed: (){
                                        setState(() {
                                          //isLiked.(index)=!isLiked;

                                          isLiked=!isLiked;


                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                    ),
                  ),
                  //hotel
                  Visibility(
                    visible: hotelIsVisible,
                    child: Container(

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
                                  onTap: (){},
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
                                  onTap: (){},
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

                    ),
                  ),
                  //flight
                  Visibility(
                    visible: flightIsVisible,
                    child: Padding(
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
                                  onPressed: (){},
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
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );


  }
}