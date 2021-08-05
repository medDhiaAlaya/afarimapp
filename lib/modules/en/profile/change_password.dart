import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor:  const Color(0xff006633),
          elevation: 0,
          title: // Edit profile
          Text(
              "Change password",
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
                        height: 460,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(6)
                          ),
                          boxShadow: [BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0,3),
                              blurRadius: 6,
                              spreadRadius: 0,
                          )] ,
                          color: Colors.white,
                          // color: const Color(0xffffffff)
                        ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            SizedBox(height: 80,
                            ),
                            // Your password*
                            Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                            style: const TextStyle(
                                                color:  const Color(0xff313131),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Cairo",
                                                fontStyle:  FontStyle.normal,
                                                fontSize: 14.0,
                                            ),
                                            text: "Your password"),
                                        TextSpan(
                                            style: const TextStyle(
                                                color:  const Color(0xffd90000),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Cairo",
                                                fontStyle:  FontStyle.normal,
                                                fontSize: 14.0,
                                            ),
                                            text: "*"),
                                      ],
                                  ),
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width:double.infinity,
                              height: 36,
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        style: const TextStyle(
                                          color:  const Color(0xff313131),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0,
                                        ),
                                        text: "New password"),
                                    TextSpan(
                                        style: const TextStyle(
                                          color:  const Color(0xffd90000),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0,
                                        ),
                                        text: "*"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width:double.infinity,
                              height: 36,
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        style: const TextStyle(
                                          color:  const Color(0xff313131),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0,
                                        ),
                                        text: "Confirm password"),
                                    TextSpan(
                                        style: const TextStyle(
                                          color:  const Color(0xffd90000),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0,
                                        ),
                                        text: "*"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Container(
                              width:double.infinity,
                              height: 36,
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 30,
                            ),
                            // Rectangle 573
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
                            // Rectangle 573
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
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                ],
              ),
              // Profile image
              Positioned(
                top: 50.0, // (background container size) - (circle height / 2)
                child: Image(

                  image: AssetImage('icons/user-profile.png',),


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
