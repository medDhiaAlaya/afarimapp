import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF006633),
        title: Text(
          'Create an account',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 58,
          right: 58,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //logo
                Center(
                  child: Container(
                    width:140 ,
                    height:100 ,
                    child: Image.asset(
                      'icons/logoafarim.png',
                      height: 48.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                //Text
                Text('Enter the email adress you used to create your Afarim accout',
                  style: GoogleFonts.cairo(
                    textStyle: TextStyle(
                      color: Color(0xFF313131),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      height: 0.9,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                //email
                Container(
                  width: double.infinity,
                  height: 36,
                  child: TextFormField(
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                //button send
                Container(
                  width: double.infinity,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xFF006633),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:50.0,
                ),
                Center(
                  child: Text('If you don\'t remember the email address you used to create your account, please',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(

                        color: Color(0xFF313131),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 0.9,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(onPressed: (){
                  }, child: Text('contact us',
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                        color: Color(0xFF999966),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 0.9,
                      ),
                    ),
                  ),),
                )





              ],
            ),
          ),
        ),
      ),
    );
  }

}