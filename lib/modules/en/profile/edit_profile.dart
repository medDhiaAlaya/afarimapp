import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:country_list_pick/country_list_pick.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
   String? _chosenValue='Mr';
   String textNumberPhone = '';
   String dialCodeInitial = '+966';
   String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:  const Color(0xff006633),
        elevation: 0,
        title: // Edit profile
        Text(
            "Edit profile ",
            style: const TextStyle(
                color:  const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "Cairo",
                fontStyle:  FontStyle.normal,
                fontSize: 18.0
            ),
            textAlign: TextAlign.center
        )


      ),
      body:ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // background image and bottom contents
              Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    color: Colors.white,

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30),
                    child: Container(
                        width: double.infinity,
                        height: 700,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(6)
                          ),
                          boxShadow: [BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0,3),
                              blurRadius: 6,
                              spreadRadius: 0
                          )] ,
                          color: Colors.white,
                          // color: const Color(0xffffffff)
                        ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 80,
                            ),
                            // Title
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
                                          text: "Gender"),
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xffd90000),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 12.0
                                          ),
                                          text: "*")
                                    ]
                                )
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(3)
                                  ),
                                  border: Border.all(
                                      color: const Color(0xff707070),
                                      width: 0.699999988079071
                                  ),
                                  color: const Color(0xffffffff)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton<String>(
                                  focusColor:Colors.white,
                                  isExpanded: true,
                                  icon: Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 20,),
                                  underline: SizedBox(),
                                  value: _chosenValue,
                                  //elevation: 5,
                                  style: TextStyle(color: Colors.white),
                                  iconEnabledColor:Colors.black,
                                  items: <String>[
                                    'Mr',
                                    'Mrs',

                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,style:TextStyle(color:Colors.black),),
                                    );
                                  }).toList(),
                                  hint:Text(
                                    "Please choose a langauage",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onChanged: (String? value) {
                                    setState(() {
                                      _chosenValue = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            //first name input
                            SizedBox(height: 10,
                            ),
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
                                          text: "First Name"),
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xffd90000),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          text: "*")
                                    ]
                                )
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width:double.infinity,
                              height: 32,
                              child: TextFormField(

                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all( Radius.circular(3),


                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //last name input
                            SizedBox(height: 10,
                            ),
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
                                          text: "Last Name"),
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xffd90000),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          text: "*")
                                    ]
                                )
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width:double.infinity,
                              height: 32,
                              child: TextFormField(

                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all( Radius.circular(3),


                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //email input
                            SizedBox(height: 10,
                            ),
                            Text(
                                "Email",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 14.0
                                ),
                                textAlign: TextAlign.center
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width:double.infinity,
                              height: 32,
                              child: TextFormField(

                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all( Radius.circular(3),


                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: RichText(
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
                                                text: "Country Code"),
                                            TextSpan(
                                                style: const TextStyle(
                                                    color:  const Color(0xffd90000),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Cairo",
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 14.0
                                                ),
                                                text: "*")
                                          ]
                                      )
                                  ),
                                ),
                                Expanded(
                                  child: RichText(
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
                                                text: "Mobile Number"),
                                            TextSpan(
                                                style: const TextStyle(
                                                    color:  const Color(0xffd90000),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Cairo",
                                                    fontStyle:  FontStyle.normal,
                                                    fontSize: 14.0
                                                ),
                                                text: "*")
                                          ]
                                      )
                                  ),
                                ),


                              ],
                            ),
                            //-------------------------------
                            SizedBox(height: 5,
                            ),
                            Row(
                              children: [
                                //------------country code
                                SizedBox(width: 5,),
                                Expanded(
                                  child: Container(
                                    width:50,
                                    height: 32,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onFieldSubmitted: (String value) {
                                        print(value);
                                      },
                                      onChanged: (String value) {
                                        print(value);
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all( Radius.circular(3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //address input
                            SizedBox(height: 10,
                            ),
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
                                          text: "Address"),
                                      TextSpan(
                                          style: const TextStyle(
                                              color:  const Color(0xffd90000),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          text: "*")
                                    ]
                                )
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width:double.infinity,
                              height: 32,
                              child: TextFormField(

                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all( Radius.circular(3),


                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 40,
                            ),
                            MaterialButton(
                              onPressed: (){},
                              child: Container(
                                  child: // Save
                                  Center(
                                    child: Text(
                                        "Save",
                                        style: const TextStyle(
                                            color:  const Color(0xffffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Cairo",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 18.0
                                        ),
                                        textAlign: TextAlign.left
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 35.00,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)
                                      ),
                                      color: const Color(0xff006633)
                                  )
                              ),
                            ),
                            MaterialButton(
                              onPressed: (){},
                              child: Container(
                                  child: // Cancel
                                  Center(
                                    child: Text(
                                        "Cancel",
                                        style: const TextStyle(
                                            color:  const Color(0xff006633),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Cairo",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 18.0
                                        ),
                                        textAlign: TextAlign.left
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 35,
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
                              ),
                            ),








                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,
                  ),


                ],
              ),
              // Profile image
              Positioned(
                top: 50.0, // (background container size) - (circle height / 2)
                child: Image(

                  image: AssetImage('icons/user-profile.png',),


                ),
              ),
              Positioned(
                top: 100.0,
                right: 140,

                // (background container size) - (circle height / 2)
                child: IconButton(
                  color: const Color(0xff5b6180),

                  icon:Container(
                    child: Icon(Icons.camera_alt_rounded,
                    color: Colors.white,
                    size: 20,),

                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey,

                  ),
                ),

                  onPressed: (){

                  },
                ),
              ),


            ],
          ),
          // Rectangle 354

        ],
      ),
    );
  }
}
