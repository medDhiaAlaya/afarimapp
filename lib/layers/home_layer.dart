import 'package:afarim/modules/en/Search/Search_screen.dart';
import 'package:afarim/modules/en/booking/booking_screen.dart';
import 'package:afarim/modules/en/favorite/favori_screen.dart';
import 'package:afarim/modules/en/home/home_screen.dart';
import 'package:afarim/modules/en/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:currentIndex,
        onTap: (index){
      setState(() {
        currentIndex=index;

      }
      );

    },
    showUnselectedLabels: true,
    unselectedItemColor: const Color(0xff5b6180),
    selectedItemColor: const Color(0xff006633),
    type: BottomNavigationBarType.fixed,

    items: [
        BottomNavigationBarItem(
    icon:Icon(Icons.home,
    ),
    label:'Home',
    ),
        BottomNavigationBarItem(icon:Icon(Icons.search),
    label: 'Search',
    ),
         BottomNavigationBarItem(icon:Icon(Icons.calendar_today_outlined),
    label: 'Booking',
    ),
         BottomNavigationBarItem(icon:Icon(Icons.favorite_border),
    label: 'Favori',
    ),
        BottomNavigationBarItem(icon:Icon(Icons.account_circle_outlined),
    label: 'Profile',
    ),
    ],
      ),
    body:screens[currentIndex],
    );
  }
}

