import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive/responsive.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Forgot_Password_screen.dart';
import 'SignUp_screen.dart';


class LoginScreenAr extends StatefulWidget {
  const LoginScreenAr({Key? key}) : super(key: key);

  @override
  _LoginScreenArState createState() => _LoginScreenArState();
}

class _LoginScreenArState extends State<LoginScreenAr> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isObscureText=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE') ,
      ],
      locale: Locale('ar', 'AE'),

      home: Scaffold(


        body: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 58,
            right: 58,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        //width: MediaQuery.of(context).size.width * 0.8,
                        width: 140,
                        height: 100,
                        child: Image.asset(
                          'icons/logoafarim.png',
                          height: 48.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text('تسجيل الدخول إلى حسابك',
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
                          labelText: 'البريد الإلكتروني',
                          border: OutlineInputBorder(),
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
                          labelText: 'كلمة المرور',
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            icon: Icon(isObscureText?
                            Icons.visibility:Icons.visibility_off
                            ),
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

                          'تسجيل الدخول',
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
                      onPressed: () {
                        _navigateToForgetScreen(context);
                      },
                      child: Text('نسيت كلمة المرور؟',
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
                    SizedBox(
                      height: 21.0,
                    ),
                    ResponsiveRow(
                      children: [

                        Center(
                          child: Text('ليس لديك حساب؟',
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
                          child: TextButton(onPressed: () {
                            _navigateToNextScreen(context);
                          }, child: Text('أنشئ حسابك',
                            style: GoogleFonts.cairo(
                              textStyle: TextStyle(
                                color: Color(0xFF999966),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                height: 0.9,
                              ),
                            ),
                          ),),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => SignUpScreenAr()));
  }
  void _navigateToForgetScreen(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ForgetPasswordScreenAr()));
  }
}
























