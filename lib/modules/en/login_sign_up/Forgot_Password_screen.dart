import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

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
          AppLocalizations.of(context)!.forgotYourPassword,
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
                Text(
                  AppLocalizations.of(context)!.registerText,

                  style: GoogleFonts.cairo(
                    textStyle: TextStyle(
                      color: Color(0xFF313131),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      height: 1.2,
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
                      labelText:
                      AppLocalizations.of(context)!.email,
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
                      AppLocalizations.of(context)!.send,
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
                  child: Text(
                    AppLocalizations.of(context)!.rememberEmail,

                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(

                        color: Color(0xFF313131),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(onPressed: (){
                  }, child: Text(
                    AppLocalizations.of(context)!.contactUs,
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