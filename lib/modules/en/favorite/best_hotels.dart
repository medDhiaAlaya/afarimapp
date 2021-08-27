import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BestHotels extends StatefulWidget {
  const BestHotels({Key? key}) : super(key: key);

  @override
  _BestHotelsState createState() => _BestHotelsState();
}

class _BestHotelsState extends State<BestHotels> {
  List<Map<String, String>> popular = [
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'Rain Forest',
      "rate": '4.5'
    },
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'Lake Louise',
      "rate": '2.1'
    },
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'Plitivice Lakes',
      "rate": '1.9'
    },
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'Dubai',
      "rate": '2.4'
    },
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'Tower',
      "rate": '4.5'
    },
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'Pyramids',
      "rate": '3.6'
    },
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'island',
      "rate": '4.5'
    },
    {
      'img': 'icons/backgroun_home.jpg',
      "name": 'Biza Tower',
      "rate": '4.5',


    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child:
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        AppLocalizations.of(context)!.findYourBestHotel,
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 13.0
                        ),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                    TextButton(

                      child: Text(
                        AppLocalizations.of(context)!.seeAll,
                        style: const TextStyle(
                            color:  const Color(0xff999966),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 12.0
                        ),
                      ),
                      onPressed: (){},
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  crossAxisCount: 4,
                  itemCount: popular.length,
                  itemBuilder: (BuildContext context, int index) => Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(popular[index]['img'] ?? ''),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popular[index]['name']?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Opacity(
                                opacity : 0.7099999785423279,
                                child:   Container(

                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                            color:  const Color(0xfff2bb09),
                                            size: 20,
                                          ),
                                          SizedBox(width: 2,),
                                          Text(
                                              popular[index]['rate'] ?? '',
                                              style: const TextStyle(
                                                  color:  const Color(0xff313131),
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Cairo",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 15
                                              ),
                                              textAlign: TextAlign.center
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6)
                                      ),
                                      color: const Color(0xffffffff)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 1,
                        right: 4,
                        child:LikeButton(
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              Icons.favorite,
                              color: isLiked ? Colors.pinkAccent : Colors.white,

                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
