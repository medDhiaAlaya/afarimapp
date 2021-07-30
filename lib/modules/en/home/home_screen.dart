
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Stack(
            alignment:Alignment.center ,
            children: [

              Container(
                child: Image(image: AssetImage('icons/backgroun_home.jpg'),
                ),
              ),
              Text(
                  "Get inspired \n for your next adventure",
                  style: const TextStyle(
                      color:  const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "BeaufortforLOL",
                      fontStyle:  FontStyle.normal,
                      fontSize: 19.0
                  ),
                  textAlign: TextAlign.center
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 200,
            ),
            child: Container(
              padding:const EdgeInsets.only(left: 10,
                right: 10,
                top: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(30) ,
                  topRight:Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>SizedBox(width: 10,),
                scrollDirection: Axis.vertical,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) => ItemBuilder(),
              ),
        ),
          ),
    ),
      ],
    );
  }

 Widget PhotoItemBuilder() => GestureDetector(
   onTap: (){},
   child: Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,

      child:Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image(image: AssetImage('icons/photo-1548588681-adf41d474533.jpg'),
            width: 180,
            height: 120,
            fit: BoxFit.cover,
          ),
          Container(
            width: 66,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
              color: const Color(0xff999966),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 10,
              ),
              child: Text(
                  "Istanbul",
                  style: const TextStyle(
                      color:  const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Cairo",
                      fontStyle:  FontStyle.normal,
                      fontSize: 12.0
                  ),
                  textAlign: TextAlign.center
              ),
            ),
          ),
        ],
      ),
      width: 180,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0)

      ),
    ),
 );
  Widget ItemBuilder() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 10,
      ),
      Text("Top international city guides",
        textAlign: TextAlign.left,
        style: const TextStyle(
            color:  const Color(0xff313131),
            fontWeight: FontWeight.w700,
            fontFamily: "Cairo",
            fontStyle:  FontStyle.normal,
            fontSize: 15.0
        ),
      ),
      SizedBox(height: 10,
      ),
      Container(
        height: 120,
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) =>SizedBox(width: 10,),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,

            child:Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image(image: AssetImage('icons/image@188x91.png'),
                  width: 180,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 66,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    ),
                    color: const Color(0xff999966),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      right: 10,
                    ),
                    child: Text(
                        "Istanbul",
                        style: const TextStyle(
                            color:  const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle:  FontStyle.normal,
                            fontSize: 12.0
                        ),
                        textAlign: TextAlign.center
                    ),
                  ),
                ),
              ],
            ),
            width: 180,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),

            ),
          ),
        ),
      ),
    ],

  );

}
