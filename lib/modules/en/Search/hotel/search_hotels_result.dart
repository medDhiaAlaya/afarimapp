import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:like_button/like_button.dart';

class SearchHotelsResult extends StatefulWidget {
  const SearchHotelsResult({Key? key}) : super(key: key);

  @override
  _SearchHotelsResultState createState() => _SearchHotelsResultState();
}

class _SearchHotelsResultState extends State<SearchHotelsResult> {
  List<Map<String, String>> booking = [
  {
  'img': 'icons/backgroun_home.jpg',
  "name": 'The Orlando House',
  "place": 'municipality, state',
  "rate":"3.8",
  "reviews":"(1234 reviews)",
  "price":"300 \$",
  },
  {
  'img': 'icons/backgroun_home.jpg',
  "name": 'Istanbul',
  "place": 'Turkey',
  "rate":"3.8",
  "reviews":"(1234 reviews)",
  "price":"233 \$",
  },
  {
  'img': 'icons/backgroun_home.jpg',
  "name": 'Istanbul',
  "place": 'Turkey',
  "rate":"3.8",
  "reviews":"(1234 reviews)",
  "price":"136 \$",
  },
  {
  'img': 'icons/backgroun_home.jpg',
  "name": 'Istanbul',
  "place": 'Turkey',
  "rate":"3.8",
  "reviews":"(1234 reviews)",
  "price":"166 \$",
  },
  {
  'img': 'icons/backgroun_home.jpg',
  "name": 'Istanbul',
  "place": 'Turkey',
  "rate":"3.8",
  "reviews":"(1234 reviews)",
  "price":"233 \$",
  },
  {
  'img': 'icons/backgroun_home.jpg',
  "name": 'Istanbul',
  "place": 'Turkey',
  "rate":"3.8",
  "reviews":"(1234 reviews)",
  "price":"233£",
  },

  ];
  static double _lowerValue = 0.0;
  static double _upperValue = 10.0;

  RangeValues values = RangeValues(_lowerValue, _upperValue);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: // Hotels
        Center(
          child: Text(
              "Hotels",
              style: const TextStyle(
                  color:  const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0
              ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(

                    scrollable: true,
                    title:
                    // Choose Your Filter
                    Text(
                        "Choose Your Filter ",
                        style: const TextStyle(
                            color:  const Color(0xff313131),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 17.0
                        ),
                        textAlign: TextAlign.left,
                    ),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Budget
                            Text(
                                "Budget",
                                style: const TextStyle(
                                    color:  const Color(0xff313131),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                textAlign: TextAlign.left,
                            ),
                            //slider de budget
                            RangeSlider(
                              activeColor:const Color(0xff999966),
                          labels: RangeLabels(values.start.abs().toString(), values.end.abs().toString()),
                              min: _lowerValue,
                              max: _upperValue,
                              values: values,
                              onChanged: (val) {
                                setState(() {
                                  values = val;
                                });
                              },
                            ),
                            //hotel class
                            Text(
                              "Hotel Class",
                              style: const TextStyle(
                                  color:  const Color(0xff313131),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Cairo",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                              textAlign: TextAlign.left,
                            ),
                            RatingBar(
                          initialRating: 3,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                            full: Icon(Icons.star,
                                color: const Color(0xfff2bb09),
                            ),
                            half: Icon(Icons.star_border,
                                color: const Color(0xfff2bb09)
                            ) ,
                            empty: Icon(Icons.star_border,
                                color: const Color(0xfff2bb09)
                            ),
                          ),
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0), onRatingUpdate: (double value) {  },
                            //facilities
                        ),
                            SizedBox(height: 20,),
                            MaterialButton(
                              onPressed: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      color: Colors.red,
                                      width: double.infinity,
                                      height: 300,
                                    );
                                  },
                                );

                              },
                              child: Container(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,
                                      ),
                                      Icon(Icons.wifi),
                                      SizedBox(width: 10,
                                      ),
                                      // Facilities
                                      Text(
                                          "Facilities",
                                          style: const TextStyle(
                                              color:  const Color(0xff313131),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Cairo",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 14.0
                                          ),
                                          textAlign: TextAlign.center
                                      )
                                    ],
                                  ),
                                  width: 272,
                                  height: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(9)
                                      ),
                                      border: Border.all(
                                          color: const Color(0xff707070),
                                          width: 1
                                      ),
                                      color: const Color(0xffffffff)
                                  )
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    actions: [
                      MaterialButton(
                        onPressed:(){},
                        child: Container(
                          child: // Apply
                          Center(
                            child: Text(
                                "Apply",
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
                            width: 272,
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(9)
                                ),
                                color: const Color(0xff006633)
                            )
                        ),
                      ),
                      MaterialButton(
                        onPressed:(){
                          void showDialogWithFields() {
                            showDialog(
                              context: context,
                              builder: (_) {
                                var emailController = TextEditingController();
                                var messageController = TextEditingController();
                                return AlertDialog(
                                  title: Text('Contact Us'),
                                  content: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      TextFormField(
                                        controller: emailController,
                                        decoration: InputDecoration(hintText: 'Email'),
                                      ),
                                      TextFormField(
                                        controller: messageController,
                                        decoration: InputDecoration(hintText: 'Message'),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Send them to your email maybe?
                                        var email = emailController.text;
                                        var message = messageController.text;
                                        Navigator.pop(context);
                                      },
                                      child: Text('Send'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }

                        },
                        child: // Rectangle 249
                        Container(
                          child: // Reset
                          Center(
                            child: Text(
                                "Reset",
                                style: const TextStyle(
                                    color:  const Color(0xff006633),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cairo",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.center
                            ),
                          ),
                            width: 272,
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(9)
                                ),
                                border: Border.all(
                                    color: const Color(0xff006633),
                                    width: 1
                                ),
                                color: const Color(0xffffffff)
                            )
                        ),
                      ),

                    ],
                  );
                });
          }, icon:Icon(Icons.reorder)),
        ],
        backgroundColor:const Color(0xff006633),
      ),

      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 20,
          ),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            itemCount: booking.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
                    Stack(
                      children: [

                        ClipRRect(
                          child: Image.asset(booking[index]['img'] ?? '',
                            fit: BoxFit.fitWidth,
                            height: 100,
                            width: double.infinity,
                          ),

                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                            topRight:Radius.circular(10),
                          ),

                        ),
                        Positioned(
                          top: 4,
                          right: 4,
                          child: LikeButton(
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
                    SizedBox(height: 20,
                    ),

                    Positioned(
                      bottom: 5,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 3,
                            ),
                            child: Text(
                              booking[index]['name']?? '',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.00),
                            child: Row(
                              children: [
                                Icon(Icons.location_on,
                                  color:Colors.pink,
                                  size: 20,
                                ),
                                SizedBox(width: 2,),
                                Text(
                                    booking[index]['place'] ?? '',
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.star,
                                  color:Colors.amber,
                                  size: 20,
                                ),
                                SizedBox(width: 2,),
                                Text(
                                    booking[index]['rate'] ?? '',
                                    style: const TextStyle(
                                      color:  const Color(0xff313131),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Cairo",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center
                                ),
                                SizedBox(width: 5,),
                                Text(
                                    booking[index]['reviews'] ?? '',
                                    style: const TextStyle(
                                        color:  const Color(0xff313131),
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
                          // Ligne 3
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                                width: double.infinity,
                                height: 0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff707070),
                                        width: 0.5
                                    )
                                )
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          booking[index]['price'] ?? '',
                                          style: const TextStyle(
                                            color:  const Color(0xff313131),
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Cairo",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center
                                      ),
                                      // /night
                                      Text(
                                          "/night",
                                          style: const TextStyle(
                                            color:  const Color(0xff313131),
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Cairo",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 10.00,
                                          ),
                                          textAlign: TextAlign.center
                                      )
                                    ],
                                  ),
                                ),

                                MaterialButton(onPressed: (){},
                                    child:// Rectangle 233
                                    Container(
                                        child:// Book again
                                        Center(
                                          child: Text(
                                              "Show",
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
                                        width: 125,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(17)
                                            ),
                                            color: const Color(0xff999966)
                                        )
                                    ) // Book again
                                ),




                              ],
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