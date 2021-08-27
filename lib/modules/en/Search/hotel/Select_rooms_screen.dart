import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectRoomsScreen extends StatefulWidget {
  const SelectRoomsScreen({Key? key}) : super(key: key);

  @override
  _SelectRoomsScreenState createState() => _SelectRoomsScreenState();
}

class _SelectRoomsScreenState extends State<SelectRoomsScreen> {
  int roomNumber=0;
  int adultNumber=0;
  int childNumber=0;
  int infantNumber=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color(0xff006633),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(
            child: Text(
              AppLocalizations.of(context)!.selectRoomsAndGuests,

              style: const TextStyle(
                  color:  const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0,
              ),

            ),
          ),
        ),


      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            // Select rooms and guests
            SizedBox(height: 30,
            ),
            Text(
              AppLocalizations.of(context)!.selectRoomsAndGuests,
                style: const TextStyle(
                    color:  const Color(0xff313131),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Cairo",
                    fontStyle:  FontStyle.normal,
                    fontSize: 13.0
                ),
                //textAlign: TextAlign.left,
            ),
            SizedBox(height: 30,
            ),
            // Rectangle 685
            Container(

                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(6)
                    ),
                    boxShadow: [BoxShadow(
                        color: const Color(0x40000000),
                        offset: Offset(0,3),
                        blurRadius: 6,
                        spreadRadius: 0
                    )] ,
                    color: const Color(0xffffffff)
                ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(

                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xff999966),
                     child: Image(image: AssetImage('icons/rooms.png'),),

                      radius: 25,


                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Column(

                          children: [
                            // How many
                            Text(
                              AppLocalizations.of(context)!.howMany,
                                style: const TextStyle(
                                    color:  const Color(0xffc4c4c4),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 12.0
                                ),
                            ),
                            // Room
                            Text(
                              AppLocalizations.of(context)!.room,
                                style: const TextStyle(
                                    color:  const Color(0xff006633),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        roomNumber--;
                      });
                    },
                      child: Icon(Icons.remove,
                      color: const Color(0xff006633),),
                      backgroundColor: Colors.white,
                      mini: true,

                    ),
                    SizedBox(width: 10,
                    ),
                    Text(
                      "$roomNumber",
                      style: const TextStyle(
                        color:  const Color(0xff5b6180),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Cairo",
                          fontStyle:  FontStyle.normal,
                          fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(width: 10,
                    ),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        roomNumber++;
                      });
                    },
                      child: Icon(Icons.add,
                        color: const Color(0xff006633),),
                      backgroundColor: Colors.white,
                      mini: true,

                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 30,
            ),
            // Rectangle 686
            Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(6)
                    ),
                    boxShadow: [BoxShadow(
                        color: const Color(0x40000000),
                        offset: Offset(0,3),
                        blurRadius: 6,
                        spreadRadius: 0
                    )] ,
                    color: const Color(0xffffffff)
                ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Row(

                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xff999966),
                          child: Image(image: AssetImage('icons/guests.png'),),

                          radius: 25,


                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Column(

                              children: [
                                // How many
                                Text(
                                  AppLocalizations.of(context)!.above12years,
                                  style: const TextStyle(
                                      color:  const Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 12.0
                                  ),
                                ),
                                // Room
                                Text(
                                  AppLocalizations.of(context)!.adult,
                                  style: const TextStyle(
                                      color:  const Color(0xff006633),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 16.0
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            adultNumber--;
                          });
                        },
                          child: Icon(Icons.remove,
                            color: const Color(0xff006633),),
                          backgroundColor: Colors.white,
                          mini: true,

                        ),
                        SizedBox(width: 10,
                        ),
                        Text(
                          "$adultNumber ",
                          style: const TextStyle(
                            color:  const Color(0xff5b6180),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(width: 10,
                        ),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            adultNumber++;
                          });
                        },
                          child: Icon(Icons.add,
                            color: const Color(0xff006633),),
                          backgroundColor: Colors.white,
                          mini: true,

                        ),

                      ],
                    ),
                    Row(

                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xff999966),
                          child: Image(image: AssetImage('icons/guests.png'),),

                          radius: 25,


                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Column(

                              children: [
                                // How many
                                Text(
                                  AppLocalizations.of(context)!.childYears,

                                  style: const TextStyle(
                                      color:  const Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 12.0
                                  ),
                                ),
                                // Room
                                Text(
                                  AppLocalizations.of(context)!.child,
                                  style: const TextStyle(
                                      color:  const Color(0xff006633),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 16.0
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            childNumber--;
                          });
                        },
                          child: Icon(Icons.remove,
                            color: const Color(0xff006633),),
                          backgroundColor: Colors.white,
                          mini: true,

                        ),
                        SizedBox(width: 10,
                        ),
                        Text(
                          "$childNumber ",
                          style: const TextStyle(
                            color:  const Color(0xff5b6180),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(width: 10,
                        ),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            childNumber++;
                          });
                        },
                          child: Icon(Icons.add,
                            color: const Color(0xff006633),),
                          backgroundColor: Colors.white,
                          mini: true,

                        ),

                      ],
                    ),
                    Row(

                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xff999966),
                          child: Image(image: AssetImage('icons/guests.png'),),

                          radius: 25,


                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Column(

                              children: [
                                // How many
                                Text(
                                  AppLocalizations.of(context)!.below2Years,
                                  style: const TextStyle(
                                      color:  const Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 12.0
                                  ),
                                ),
                                // Room
                                Text(
                                  AppLocalizations.of(context)!.infant,
                                  style: const TextStyle(
                                      color:  const Color(0xff006633),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 16.0
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            infantNumber--;
                          });
                        },
                          child: Icon(Icons.remove,
                            color: const Color(0xff006633),),
                          backgroundColor: Colors.white,
                          mini: true,

                        ),
                        SizedBox(width: 10,
                        ),
                        Text(
                          "$infantNumber ",
                          style: const TextStyle(
                            color:  const Color(0xff5b6180),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(width: 10,
                        ),
                        FloatingActionButton(onPressed: (){
                                        setState(() {
                                          infantNumber++;
                                        });                        },
                          child: Icon(Icons.add,
                            color: const Color(0xff006633),),
                          backgroundColor: Colors.white,
                          mini: true,

                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            // Rectangle 573
            MaterialButton(
              onPressed: (){},
              child: Container(
                child: // Apply
                Center(
                  child: Text(
                      AppLocalizations.of(context)!.apply,

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
            SizedBox(height: 30,),


          ],
        ),
      ),
    );
  }
}
