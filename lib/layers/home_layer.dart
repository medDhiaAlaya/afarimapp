import 'package:afarim/modules/en/Search/Search_screen.dart';
import 'package:afarim/modules/en/booking/booking_screen.dart';
import 'package:afarim/modules/en/favorite/favori_screen.dart';
import 'package:afarim/modules/en/home/home_screen.dart';
import 'package:afarim/modules/en/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeLayer extends StatefulWidget {
  const HomeLayer({Key? key}) : super(key: key);

  @override
  _HomeLayerState createState() => _HomeLayerState();
}

class _HomeLayerState extends State<HomeLayer> {

  int currentIndex=0;
  List<Widget> screens=[
    HomeScreen(),
    SearchScreen(),
    BookingScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom Navigation bar
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: const Color(0xff006633),

      style: TabStyle.flip,
      items: [
        TabItem(icon:Icons.home,
        title:
        AppLocalizations.of(context)!.home,
        ),
        TabItem(icon: Icons.search,
        title:
        AppLocalizations.of(context)!.search,
        ),
        TabItem(icon:Icons.calendar_today_outlined,
        title:
        AppLocalizations.of(context)!.booking,
        ),
        TabItem(icon: Icons.favorite_border,
        title:
        AppLocalizations.of(context)!.favorite,
        ),
        TabItem(icon: Icons.account_circle_outlined,
        title:
        AppLocalizations.of(context)!.profile,

           ),
      ],
      initialActiveIndex: 0,
        onTap: (index){
          setState(() {
            currentIndex=index;

          }
          );

        },
    ),
    body:screens[currentIndex],
    );
  }
}

