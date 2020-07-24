import 'package:flutter/material.dart';
import 'package:ftvapp/contents/Hair.dart';
import 'package:ftvapp/contents/beauty.dart';
import 'package:ftvapp/contents/fashion.dart';
import 'package:ftvapp/contents/nutritionist.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {

//  RecommendedPage({Key key}) : super(key: key);

  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 120,
          width: width,
          decoration: BoxDecoration(
            color: LightColor.yellow,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, LightColor.lightYellow)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(width * .5, LightColor.darkYellow)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Wishlist",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ))),
            ],
          )),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _header(context),
              SizedBox(height: 40),
              Center(
                child: Icon(
                  Icons.headset_mic,
                  size: 80,
                  color: LightColor.darkgrey,
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Want to save something for \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tlater?",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: LightColor.darkgrey,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Your wishlist will go here.",
                  style: TextStyle(
                    fontSize: 19,
                    color: LightColor.darkgrey,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Browse Categories",
                  style: TextStyle(
                    fontSize: 22,
                    color: LightColor.darkgrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 450,
                child: Column(
                  children: <Widget>[
                    SizedBox(width: 20),
                    Container(
                      width: 150,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => Beauty()));
                            },
                            icon: Icon(Icons.child_care,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Beauty",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => Fashion()));
                            },
                            icon: Icon(Icons.favorite_border,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Fashion",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.accessibility_new,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Health Care",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.nature,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Ayurveda",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.local_library,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Nail art",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => Nutrition()));
                            },
                            icon: Icon(Icons.restaurant_menu,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Nutrition",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.style,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Modelling",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.brush,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Makeup",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => Hair()));
                            },
                            icon: Icon(Icons.flare,
                              color: LightColor.darkgrey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Hairstyle",
                            style: TextStyle(
                              fontSize: 18,
                              color: LightColor.darkgrey,
                            ),
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
    );
  }
}
