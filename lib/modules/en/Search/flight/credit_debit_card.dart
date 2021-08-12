import 'package:flutter/material.dart';

class CreditCardPayment extends StatefulWidget {
  const CreditCardPayment({Key? key}) : super(key: key);

  @override
  _CreditCardPaymentState createState() => _CreditCardPaymentState();
}

class _CreditCardPaymentState extends State<CreditCardPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: // Payment
        Text(
            "Payment",
            style: const TextStyle(
                color:  const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "Cairo",
                fontStyle:  FontStyle.normal,
                fontSize: 15.0
            ),
            textAlign: TextAlign.left,
        ),
        elevation: 0,
        backgroundColor: const Color(0xff006633),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
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
                              "PAR",
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
                              "TUN",
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
                              "Round-trip",
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
                        "1 Adult - 20 Jul - 26 Jul",
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
              SizedBox(height: 30,
              ),
              // Credit/ Debit Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                    "Credit/ Debit Card",
                    style: const TextStyle(
                        color:  const Color(0xff313131),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cairo",
                        fontStyle:  FontStyle.normal,
                        fontSize: 15.0
                    ),
                    textAlign: TextAlign.left,
                ),
              ),
              // Rectangle 705
              // Rectangle 705
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                    width: double.infinity,
                    height: 200,
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
                    )
                ),
              ),
              // Rectangle 573
              MaterialButton(
                onPressed: (){},
                child: Container(
                  child: // Pay now
                  Center(
                    child: Text(
                        "Pay now",
                        style: const TextStyle(
                            color:  const Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        ),
                        textAlign: TextAlign.left
                    ),
                  ),
                    width: 257.4888916015625,
                    height: 39.611328125,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(100)
                        ),
                        color: const Color(0xff006633)
                    )
                ),
              ),
              SizedBox(height: 20,),
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
                            fontSize: 16.0
                        ),
                        textAlign: TextAlign.left
                    ),
                  ),
                    width: 257.4888916015625,
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
              )

            ],
          ),
          Positioned(
            left: 50,
            top: 70,
            child: Container(
                child: // Payment Options
                Center(
                  child: Text(
                      "Payment Options",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Cairo",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                      ),
                      textAlign: TextAlign.center
                  ),
                ),
                width: 285,
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(29)
                    ),
                    border: Border.all(
                        color: const Color(0xffffffff),
                        width: 2
                    ),
                    boxShadow: [BoxShadow(
                        color: const Color(0x38000000),
                        offset: Offset(0,3),
                        blurRadius: 6,
                        spreadRadius: 0
                    )] ,
                    color: const Color(0xff006633)
                )
            ),
          ),
        ],
      ),
    );
  }
}
