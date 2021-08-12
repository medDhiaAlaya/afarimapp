import 'package:afarim/modules/en/Search/flight/review_account.dart';
import 'package:flutter/material.dart';

class ReviewYourTrip extends StatefulWidget {
  const ReviewYourTrip({Key? key}) : super(key: key);

  @override
  _ReviewYourTripState createState() => _ReviewYourTripState();
}

class _ReviewYourTripState extends State<ReviewYourTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff006633),
        title: // Review your trip
        Center(
          child: Text(
              "Review your trip",
              style: const TextStyle(
                  color:  const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0
              ),
              textAlign: TextAlign.center
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 75,
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
          // Rectangle 701
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                width: double.infinity,
                height: 99,
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
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [

                    Container(
                      child: Image(image: AssetImage('icons/tunisair.png'),
                        fit: BoxFit.fill,),
                      width:90 ,
                      height: 90,
                    ),
                    SizedBox(width: 15,),
                    // TUNISAIR
                    Expanded(
                      child: Text(
                          "TUNISAIR",
                          style: const TextStyle(
                              color:  const Color(0xffd4071b),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Corbel",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.0
                          ),
                          textAlign: TextAlign.left,
                      ),
                    ),
                    // 02h 40m
                    Text(
                        "02h 40m",
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 11.0
                        ),
                        textAlign: TextAlign.center
                    ),
                  ],
                ),
              ),
            ),
          ),
          // total price
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                width: double.infinity,
                height: 70,
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
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    // Total price
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Total price",
                              style: const TextStyle(
                                  color:  const Color(0xff313131),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 15.0
                              ),
                              textAlign: TextAlign.left
                          ),
                          // Including tax
                          Text(
                              "Inclusing tax",
                              style: const TextStyle(
                                  color:  const Color(0xffc4c4c4),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 10.0
                              ),
                              textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    // $670
                    Text(
                        "\$670",
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 15.0
                        ),
                        textAlign: TextAlign.center
                    ),
                  ],
                ),
              ),
            ),
          ),
          // price information
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(30),
                width: double.infinity,
                height: 160,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Price information
                  Text(
                      "Price information",
                      style: const TextStyle(
                          color:  const Color(0xff313131),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Cairo",
                          fontStyle:  FontStyle.normal,
                          fontSize: 15.0
                      ),
                      textAlign: TextAlign.left
                  ),
                  SizedBox(height: 15,
                  ),
                  // Ligne 24
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        width: double.infinity,
                        height: 0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 0.4000000059604645
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 15,
                  ),
                  Row(
                    children: [

                      Container(
                        child: Image(image: AssetImage('icons/price-info.png'),
                          fit: BoxFit.fill,),
                        width:50 ,
                        height: 50,
                      ),
                      SizedBox(width: 15,),
                      // TUNISAIR
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Partially Refundable fare
                          Text(
                              "Partially Refundable fare",
                              style: const TextStyle(
                                  color:  const Color(0xffc4c4c4),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 12.0
                              ),
                          ),
                          SizedBox(height: 5,),
                          // View fare Rules
                          Text(
                              "View fare Rules",
                              style: const TextStyle(
                                  color:  const Color(0xff999966),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 11.0
                              ),
                          ),
                        ],
                      ),
                      // 02h 40m

                    ],
                  ),


                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Rectangle 573
          MaterialButton(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ReviewAccount()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: // Continue
                Center(
                  child: Text(
                      "Continue",
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
                  width: double.infinity,
                  height: 39.611328125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(100)
                      ),
                      color: const Color(0xff006633)
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
