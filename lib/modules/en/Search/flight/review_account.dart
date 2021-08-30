import 'package:afarim/modules/en/Search/flight/payement.dart';
import 'package:afarim/modules/en/login_sign_up/Login_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewAccount extends StatefulWidget {
  const ReviewAccount({Key? key}) : super(key: key);

  @override
  _ReviewAccountState createState() => _ReviewAccountState();
}

class _ReviewAccountState extends State<ReviewAccount> {
  String? _chosenValue='Mr';
  String textNumberPhone = '';
  String dialCodeInitial = '+966';
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff006633),
     ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 85,
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
                          AppLocalizations.of(context)!.par,
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
                          AppLocalizations.of(context)!.tun,
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
                          AppLocalizations.of(context)!.roundTrip,
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
                    AppLocalizations.of(context)!.date,
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
          // Rectangle 701
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                height: 700,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Total price
                    Text(
                        AppLocalizations.of(context)!.doYouHaveAnAccount,
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 15.0
                        ),
                        textAlign: TextAlign.center
                    ),
                    // Rectangle 573
                    MaterialButton(
                      padding: EdgeInsets.all(10),
                      onPressed: (){

                        Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()),);


                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          child: // Cancel
                          Center(
                            child: Text(
                                AppLocalizations.of(context)!.logInNow,
                                style: const TextStyle(
                                    color:  const Color(0xff006633),
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
                                border: Border.all(
                                    color: const Color(0xff006633),
                                    width: 1
                                ),
                                color: const Color(0xffffffff)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                        AppLocalizations.of(context)!.orEnterYourData,
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 15.0
                        ),
                        textAlign: TextAlign.center
                    ),
                    SizedBox(height: 10,),
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
                                  text:
                                  AppLocalizations.of(context)!.firstName,),
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
                                  text:
                                  AppLocalizations.of(context)!.lastName,
                              ),
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
                        AppLocalizations.of(context)!.email,
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
                                        text:
                                        AppLocalizations.of(context)!.countryCode,),
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
                                        text:
                                        AppLocalizations.of(context)!.mobileNumber,
                                        ),
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
                        CountryCodePicker(
                          padding: EdgeInsets.all(0),
                          onChanged: print,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'SA',
                          favorite: ['+966', 'SA'],
                          showFlagDialog: true,
                          comparator: (a, b) => b.name!.compareTo(a.name!),
                          //Get the country information relevant to the initial selection
                          onInit: (code) =>
                              print("on init ${code!.name} ${code.dialCode} ${code.name}"),
                        ),
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
                                  text:
                                  AppLocalizations.of(context)!.address,
                              ),
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
                      onPressed: (){


                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Payment()),);




                      },
                      child: Container(
                          child: // Save
                          Center(
                            child: Text(
                                AppLocalizations.of(context)!.save,
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


                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
