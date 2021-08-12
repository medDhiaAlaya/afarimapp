import 'package:afarim/modules/en/Search/flight/credit_debit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
            textAlign: TextAlign.center
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
              // Rectangle 705
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  padding: EdgeInsets.all(30),
                    width: double.infinity,
                    height: 249,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //credit debit card
                      InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>CreditCardPayment()),);

                        },
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [

                                Container(
                                  child: Image(image: AssetImage('icons/credit-card.png'),
                                    fit: BoxFit.fill,),
                                  width:25 ,
                                  height: 20,
                                ),
                                SizedBox(width: 20,
                                ),
                                // credit card
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Credit/ Debit Card
                                      Text(
                                          "Credit/ Debit Card",
                                          style: const TextStyle(
                                              color:  const Color(0xff313131),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 13.0
                                          ),
                                          textAlign: TextAlign.center
                                      ),
                                      SizedBox(height: 5,),
                                      // You can use all type of card here
                                      Text(
                                          "You can use all type of card here",
                                          style: const TextStyle(
                                              color:  const Color(0xffc4c4c4),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 10.0
                                          ),
                                          textAlign: TextAlign.center
                                      ),
                                    ],
                                  ),
                                ),
                                // 02h 40m
                                Icon(Icons.arrow_forward_ios_sharp,
                                color: Colors.grey,
                                size: 20,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                            width: 277,
                            height: 0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5
                                )
                            )
                        ),
                      ),
                      // net banking
                      InkWell(
                        onTap: (){},
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [

                                Container(
                                  child: Image(image: AssetImage('icons/bank.png'),
                                    fit: BoxFit.fill,),
                                  width:25 ,
                                  height: 20,
                                ),
                                SizedBox(width: 20,
                                ),
                                // credit card
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Credit/ Debit Card
                                      Text(
                                          "Net Banking",
                                          style: const TextStyle(
                                              color:  const Color(0xff313131),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 13.0
                                          ),
                                          textAlign: TextAlign.center
                                      ),
                                      SizedBox(height: 5,),
                                      // You can use all type of card here
                                      Text(
                                          "All major bank are supported",
                                          style: const TextStyle(
                                              color:  const Color(0xffc4c4c4),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 10.0
                                          ),
                                          textAlign: TextAlign.center
                                      ),
                                    ],
                                  ),
                                ),
                                // 02h 40m
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey,
                                  size: 20,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            padding: EdgeInsets.all(20),
                            width: 277,
                            height: 0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5
                                )
                            )
                        ),
                      ),
                      //gift card
                      InkWell(
                        onTap: (){},
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [

                                Container(
                                  child: Image(image: AssetImage('icons/gift.png'),
                                    fit: BoxFit.fill,),
                                  width:25 ,
                                  height: 20,
                                ),
                                SizedBox(width: 20,
                                ),
                                // credit card
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Credit/ Debit Card
                                      Text(
                                          "Gift Card/ Coupon",
                                          style: const TextStyle(
                                              color:  const Color(0xff313131),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 13.0
                                          ),
                                          textAlign: TextAlign.center
                                      ),
                                      SizedBox(height: 5,),
                                      // You can use all type of card here
                                      Text(
                                          "Use to pay partial, complete amount",
                                          style: const TextStyle(
                                              color:  const Color(0xffc4c4c4),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 10.0
                                          ),
                                          textAlign: TextAlign.center
                                      ),
                                    ],
                                  ),
                                ),
                                // 02h 40m
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey,
                                  size: 20,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
