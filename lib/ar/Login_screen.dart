import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                  height: 10.0,
                ),
                Text('Login to your account',
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
                  height: 15.0,
                ),
                Container(
                  width: double.infinity,
                  height: 36,
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width:double.infinity,
                  height: 36,
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xFF006633),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: (){},
                  child:  Text('Forgot your Password?',
                  style: GoogleFonts.cairo(
                    textStyle: TextStyle(
                      color: Color(0xFF313131),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      height: 0.9,
                    ),
                  ),
                ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                Center(
                  child: Text('Or login with',
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
                SizedBox(
                  height: 21.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0),
                          ),
                          ),
                        ),
                        child: Icon(Icons.facebook_rounded,

                      ),
                      ),
                      ),
                    SizedBox(
                      width: 33.0,
                    ),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0),),),
                        ),
                        child: Image.asset(
                            'icons/iconfinder_Google_1298745.png',
                            height: 20.0,
                      ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21.0,
                ),
                Row(
                  children: [
                    Text('You Don\'t have an account?',
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: Color(0xFF313131),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 0.9,
                        ),
                      ),
                    ),
                    TextButton(onPressed: (){}, child: Text('Sign up',
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: Color(0xFF999966),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 0.9,
                        ),
                      ),
                    ),)
                  ],
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}