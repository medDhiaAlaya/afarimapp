import 'package:afarim/modules/en/profile/change_password.dart';
import 'package:afarim/modules/en/profile/edit_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? _chosenLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color(0xff006633),
        elevation: 0,
        title: Center(
          child: Text(
            "Profile ",
            style: const TextStyle(
                color:  const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "Cairo",
                fontStyle:  FontStyle.normal,
                fontSize: 15.0
            ),

          ),
        ),


      ),
      body: ListView(
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
                      height: 130,
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
                      )
                  ),
                )
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
              top: 120.0,
              right: 30,

              // (background container size) - (circle height / 2)
              child: IconButton(
                      color: const Color(0xff5b6180),

                  icon: Icon(Icons.edit),
                    onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>EditProfile()),
                  );

                },
              ),
            ),
            Positioned(
              top: 160.0, // (background container size) - (circle height / 2)
              child: // Mohamed
              Text(
                  "Mohamed",
                  style: const TextStyle(
                      color:  const Color(0xff313131),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Cairo",
                      fontStyle:  FontStyle.normal,
                      fontSize: 15.0
                  ),
                  textAlign: TextAlign.center
              )
            ),
            Positioned(
                top: 185.0, // (background container size) - (circle height / 2)
                child: // Mohamed
                // Mohamed@gmail.com
                Text(
                    "Mohamed@gmail.com",
                    style: const TextStyle(
                        color:  const Color(0xff313131),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Cairo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 15.0
                    ),
                    textAlign: TextAlign.center
                ),
            ),

          ],
    ),
          // Rectangle 354
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePassword()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          boxShadow: [BoxShadow(
                              color: const Color(0x33000000),
                              offset: Offset(0,3),
                              blurRadius: 6,
                              spreadRadius: 0
                          )] ,
                          color: const Color(0xffffffff)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.lock),
                          // Languages
                          SizedBox(width: 10,
                          ),
                          Expanded(
                            child: Text(
                                "Change password",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),
                          // English
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                      width: double.infinity,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          boxShadow: [BoxShadow(
                              color: const Color(0x33000000),
                              offset: Offset(0,3),
                              blurRadius: 6,
                              spreadRadius: 0
                          )] ,
                          color: const Color(0xffffffff)
                      ),
                    child: Row(
                      children: [
                        Icon(Icons.language),
                        SizedBox(width: 10,
                        ),
                        // Languages
                        Expanded(
                          child: Text(
                              "Languages",
                              style: const TextStyle(
                                  color:  const Color(0xff313131),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 15.0
                              ),
                              textAlign: TextAlign.left
                          ),
                        ),
                        // ---------------------------------choose language
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              focusColor:Colors.white,
                              isExpanded: true,
                              icon: Icon(Icons.arrow_forward_ios,
                                size: 20,),
                              underline: SizedBox(),
                              value: _chosenLanguage,
                              //elevation: 5,
                              style: TextStyle(color: Colors.white),
                              iconEnabledColor:Colors.black,
                              items: <String>[
                                'English',
                                'Arabic',

                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value,style:TextStyle(color:Colors.black),),
                                );
                              }).toList(),
                              hint:Text(
                                "$_chosenLanguage",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _chosenLanguage = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Rectangle 356
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.text_snippet),
                          SizedBox(width: 10,
                          ),
                          // Languages
                          Expanded(
                            child: Text(
                                "Terms of use",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                      width: double.infinity,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          color: const Color(0xffffffff)
                      )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.text_snippet_outlined),
                          SizedBox(width: 10,
                          ),
                          // Languages
                          Expanded(
                            child: Text(
                                "Privacy Policy",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),
                          // English
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                      width: double.infinity,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          color: const Color(0xffffffff)
                      )
                  ),



                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.help),
                          SizedBox(width: 10,
                          ),
                          // Languages
                          Expanded(
                            child: Text(
                                "Help",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                      width: double.infinity,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          color: const Color(0xffffffff)
                      )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10,
                          ),
                          // Languages
                          Expanded(
                            child: Text(
                                "Contact us",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),
                          // English
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                      width: double.infinity,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          color: const Color(0xffffffff)
                      )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.error),
                          SizedBox(width: 10,
                          ),
                          // Languages
                          Expanded(
                            child: Text(
                                "About the app",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),
                          // English
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                      width: double.infinity,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          color: const Color(0xffffffff)
                      )
                  ),
                  SizedBox(
                    height: 30,
                  ),



                  Container(
                    width: double.infinity,
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(3)
                        ),
                        boxShadow: [BoxShadow(
                            color: const Color(0x33000000),
                            offset: Offset(0,3),
                            blurRadius: 6,
                            spreadRadius: 0
                        )] ,
                        color: const Color(0xffffffff)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.exit_to_app),
                        // Languages
                        SizedBox(width: 10,
                        ),
                        Expanded(
                          child: Text(
                              "Sign Out",
                              style: const TextStyle(
                                  color:  const Color(0xff313131),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 15.0
                              ),
                              textAlign: TextAlign.left
                          ),
                        ),
                        // English
                        Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Rectangle 368
                  Container(

                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          ),
                          boxShadow: [BoxShadow(
                              color: const Color(0x33000000),
                              offset: Offset(0,3),
                              blurRadius: 6,
                              spreadRadius: 0
                          )] ,
                          color: const Color(0xffffffff)
                      ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(

                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              // follow us on
                              Text(
                                  "follow us on",
                                  style: const TextStyle(
                                      color:  const Color(0xff006633),
                                      fontWeight: FontWeight.w900,
                                      fontFamily: "Gilroy",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 20.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              // Social Media
                              Text(
                                  "Social Media",
                                  style: const TextStyle(
                                      color:  const Color(0xff37538f),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Gilroy",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 15.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                        Image(image:AssetImage('icons/iconfinder_Facebook_4745722.png'),
                        ),
                        SizedBox(width: 10,
                        ),
                        Image(image:AssetImage('icons/iconfinder_social_media_applications_3-instagram_4102579.png'),
                        ),
                        SizedBox(width: 10,
                        ),
                        Image(image:AssetImage('icons/iconfinder_1_Linkedin_unofficial_colored_svg_5296501.png'),
                        ),
                        SizedBox(width: 10,
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
