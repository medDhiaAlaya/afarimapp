import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Login_screen.dart';



class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool isObscureText=true;//for password
  bool isObscureTextConfirm=true; //for password confirm

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: Color(0xFF006633),
        title: Text(
          AppLocalizations.of(context)!.createAnAccount,
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
                  height: 10.0,
                ),
                //create your account
                Text(
                  AppLocalizations.of(context)!.createYourAccount,
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
                //enter username
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
                      labelText:
                      AppLocalizations.of(context)!.userName,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //email
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
                      labelText:
                      AppLocalizations.of(context)!.email,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //password
                Container(
                  width:double.infinity,
                  height: 36,
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText:isObscureText,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText:
                      AppLocalizations.of(context)!.yourPassword,
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        icon: Icon(
                          isObscureText? Icons.visibility:Icons.visibility_off,
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //confirm password
                Container(
                  width:double.infinity,
                  height: 36,
                  child: TextFormField(
                    controller: confirmPasswordController ,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isObscureTextConfirm,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText:
                      AppLocalizations.of(context)!.confirmPassword,
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isObscureTextConfirm=!isObscureTextConfirm;
                          });
                        },
                        icon: Icon(isObscureTextConfirm?
                          Icons.visibility:Icons.visibility_off,
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //button sign up
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
                      print(confirmPasswordController.text);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.signUp,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),

                SizedBox(
                  height: 21.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.doYouHaveAnAccount,
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: Color(0xFF313131),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 0.9,
                        ),
                      ),
                    ),
                    TextButton(onPressed: (){
                      _navigateToNextScreen(context);
                    }, child: Text(
                      AppLocalizations.of(context)!.signIn,
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

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
}
}