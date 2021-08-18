import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: ListView(
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
                  SizedBox(height: 10,
                  ),
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
          // top-ticket
          // ticket-bg
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: // Rectangle 705
            Container(
                width: double.infinity,
                height: 100,
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
                    color: Colors.grey[200],
                ),
              child: Center(
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Container(
                        child: Image(image:AssetImage('icons/tunisair.png'),),
                        height: 60,
                        width: 70,
                      ),
                      SizedBox(width: 10,
                      ),
                      // TUNISAIR
                      Text(
                          "TUNISAIR",
                          style: const TextStyle(
                              color:  const Color(0xffd4071b),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Corbel",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0
                          ),

                      ),
                    ],
                  ),
                ),
              ),

            ),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: // Rectangle 705
            Container(
              padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 430,
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
                  color: Colors.white,
                ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // from
                              Text(
                                  "from",
                                  style: const TextStyle(
                                      color:  const Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // NRB
                              Text(
                                  "PAR",
                                  style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 22.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                            ],
                          ),
                        ),
                        
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // from
                            Text(
                                "to",
                                style: const TextStyle(
                                    color:  const Color(0xffc4c4c4),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.0
                                ),
                                textAlign: TextAlign.right,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // NRB
                            Text(
                                "TUN",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 22.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // from
                              Text(
                                  "Departure",
                                  style: const TextStyle(
                                      color:  const Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // NRB
                              Text(
                                  "O1:10 pm",
                                  style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 22.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                            ],
                          ),
                        ),
                        
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // from
                            Text(
                                "arrival",
                                style: const TextStyle(
                                    color:  const Color(0xffc4c4c4),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.0
                                ),
                                textAlign: TextAlign.left
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // NRB
                            Text(
                                "02:50 pm",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 22.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // from
                              Text(
                                  "Class",
                                  style: const TextStyle(
                                      color:  const Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // NRB
                              Text(
                                  "Economy Class",
                                  style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 22.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                            ],
                          ),
                        ),

                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // from
                            Text(
                                "Seat",
                                style: const TextStyle(
                                    color:  const Color(0xffc4c4c4),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.0
                                ),
                                textAlign: TextAlign.left
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // NRB
                            Text(
                                "A3",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 22.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // from
                              Text(
                                  "Flight No.",
                                  style: const TextStyle(
                                      color:  const Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.0,
                                  ),
                                  textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // NRB
                              Text(
                                  "KQ747",
                                  style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 22.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                            ],
                          ),
                        ),

                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // from
                            Text(
                                "Gate",
                                style: const TextStyle(
                                    color:  const Color(0xffc4c4c4),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.0
                                ),
                                textAlign: TextAlign.right,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // NRB
                            Text(
                                "G",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 22.0
                                ),
                                textAlign: TextAlign.end,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      child: Image(image: AssetImage('icons/codeBar.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),


                ],
              ),
            ),

          ),

          // Credit/ Debit Card

        ],
      ),
    );
  }
}
