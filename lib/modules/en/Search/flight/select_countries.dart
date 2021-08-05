import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({Key? key}) : super(key: key);

  @override
  _CountriesScreenState createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {

  List<Map<String, String>> favorite = [
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Istanbul',
      "place": 'Turkey'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Moscow',
      "place": 'Tunisia'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Rain Forest',
      "place": 'Egypt'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Rain Forest',
      "place": 'France'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Rain Forest',
      "place": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Rain Forest',
      "place": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Rain Forest',
      "place": '4.5'
    },
    {
      'img': 'icons/photo-1548588681-adf41d474533.jpg',
      "name": 'Rain Forest',
      "place": '4.5'
    },


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color(0xff006633),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(
            child: Text(
              "Countries",
              style: const TextStyle(
                  color:  const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0
              ),

            ),
          ),
        ),


      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            width: double.infinity,
            height: 69,
            decoration: BoxDecoration(
              color: const Color(0xff006633),

            ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: 'City, airport or specific hotels',
                          contentPadding: EdgeInsets.symmetric(vertical: 9),
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(onPressed: (){},
                    child: Text(
                        "Cancel",
                        style: const TextStyle(
                            color:  const Color(0xfff9f8fb),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 13.0
                        ),
                        textAlign: TextAlign.center
                    ),)


                ],
              ),

            ),
          ),
          SizedBox(height: 20,
          ),
          // Favorite Destinations
          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Text(
              "Favorite Destinations",
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color:  const Color(0xff313131),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0
              ),

            ),
          ),
          SizedBox(height: 20,
          ),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            crossAxisCount: 4,
            itemCount: favorite.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(5)
                    ),
                    boxShadow: [BoxShadow(
                        color: const Color(0x3d000000),
                        offset: Offset(0,3),
                        blurRadius: 6,
                        spreadRadius: 0
                    )] ,
                    color: const Color(0xffffffff)
                ),
                child:Column(

                  children: [
                    ClipRRect(
                      child: Image.asset(favorite[index]['img'] ?? ''),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(height: 5,),
                    Positioned(
                      bottom: 5,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 3,
                                  ),
                                  child: Text(
                                    favorite[index]['name']?? '',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xff999966),
                                  borderRadius: BorderRadius.only(
                                    topLeft:  Radius.circular(8),
                                    bottomRight:  Radius.circular(8),

                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.location_on,
                                      color: const Color(0xff313131),
                                      size: 20,
                                    ),
                                    SizedBox(width: 2,),
                                    Text(
                                        favorite[index]['place'] ?? '',
                                        style: const TextStyle(
                                          color:  const Color(0xff313131),
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Cairo",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.center
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),


        ],
      ),
    );
  }
}
