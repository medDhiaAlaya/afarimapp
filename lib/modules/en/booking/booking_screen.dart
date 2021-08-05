import 'package:afarim/modules/en/booking/cancelled_screen.dart';
import 'package:afarim/modules/en/booking/past_screen.dart';
import 'package:afarim/modules/en/booking/upcoming_screen.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return

      DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff006633),
            bottom: TabBar(
              labelStyle: const TextStyle(
                  color:  const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0
              ),
              indicatorColor: Colors.white,

              tabs: [
                Tab(text:'Upcoming',

                ),
                Tab(text:'Past',

                ),
                Tab(text:'Cancelled',

                ),
              ],
            ),
            title: Center(child: Text('Booking')),
          ),
          body: TabBarView(
            children: [
              UpcomingScreen(),
              PastScreen(),
              CancelledScreen(),
            ],
          ),
        ),
      );
  }
}
