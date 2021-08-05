import 'package:afarim/modules/en/favorite/best_countries.dart';
import 'package:afarim/modules/en/favorite/best_hotels.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
              Tab(text:'Best Countries',

              ),
              Tab(text:'Best Hotels',

              ),

            ],
          ),
          title: Center(child: Text('Booking')),
        ),
        body: TabBarView(
          children: [
            BestCountries(),
            BestHotels(),
          ],
        ),
      ),
    );
  }
}
