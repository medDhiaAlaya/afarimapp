import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreenAr extends StatelessWidget {
  const ForgetPasswordScreenAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE') ,
      ],
      locale: Locale('ar', 'AE'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            'نسيت كلمة المرور',
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
                  Text('أدخل عنوان البريد الإلكتروني الذي استخدمته.لإنشاء حساب عفارم الخاص بك',
                    style: GoogleFonts.cairo(
                      textStyle: TextStyle(
                        color: Color(0xFF313131),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 1.3,
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
                        labelText: 'البريد الإلكتروني',
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
                        'إرسال',
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
                    child: Text('إذا كنت لا تتذكر عنوان البريد الإلكتروني استخدمته لإنشاء ملف الحساب ، يرجى التواصل معنا',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(

                          color: Color(0xFF313131),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(onPressed: (){
                    }, child: Text('التواصل معنا',
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
      ),
    );
  }

}