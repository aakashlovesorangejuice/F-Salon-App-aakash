import 'package:flutter/material.dart';
import 'package:ftvapp/contents/Hair.dart';
import 'package:ftvapp/contents/nail.dart';
import 'package:ftvapp/contents/nutritionist.dart';
import 'package:ftvapp/contents/therapy.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:ftvapp/contents/beauty.dart';
import 'package:ftvapp/contents/fashion.dart';

class Search extends StatelessWidget {
//  Search({Key key}) : super(key: key);

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
          color: LightColor.purple,
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: 30,
                right: -100,
                child: _circularContainer(300, LightColor.lightpurple)),
            Positioned(
                top: -100,
                left: -45,
                child: _circularContainer(width * .5, LightColor.darkpurple)),
            Positioned(
                top: -180,
                right: -30,
                child: _circularContainer(width * .7, Colors.transparent,
                    borderColor: Colors.white38)),
            Positioned(
              top: 40,
              left: 0,
              child:
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 2, 20, 4),
                      decoration: BoxDecoration(),
                      child: TextFormField(
                        cursorColor: Colors.white54,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                          border: InputBorder.none,
                          hintText: "Example Hair Courses etc",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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


  Widget _categoryList(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              width: width,
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Beauty()));
                    },
                      child: _chip(
                          "Beauty",
                          LightColor.darkgrey,
                          height: 5),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Nutrition()));
                    },
                      child: _chip(
                          "Nutrition",
                          LightColor.darkgrey,
                          height: 5),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Fashion()));
                    },
                      child: _chip(
                          "Fashion",
                          LightColor.darkgrey,
                          height: 5),
                  ),
                  SizedBox(width: 10),
                  _chip("Ayurveda", LightColor.darkgrey, height: 5),
                ],
              )),
          SizedBox(height: 10),
          Container(
              width: width,
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Therapy()));
                    },
                      child: _chip(
                          "Therapy",
                          LightColor.darkgrey,
                          height: 5),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Nail()));
                    },
                      child: _chip(
                          "Nails",
                          LightColor.darkgrey,
                          height: 5),
                  ),
                  SizedBox(width: 10),
                  _chip("Makeup", LightColor.darkgrey, height: 5),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Hair()));
                    },
                      child: _chip(
                          "Hairstyle",
                          LightColor.darkgrey,
                          height: 5),
                  ),
                  SizedBox(width: 10),
                  _chip("Spa", LightColor.darkgrey, height: 5),
                ],
              ),
          ),
        ],
      ),
    );
  }


  Widget _categoryRow(
      String title,
      Color primary,
      Color textColor,
      ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: LightColor.darkgrey, fontSize: 26, fontWeight: FontWeight.bold),
          ),
//          _chip("See all", primary)
        ],
      ),
    );
  }

  Widget _chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 16),
      ),
    );
  }

    categoryButton({image, title}) {
      return FlatButton(
        onPressed: () {},
          padding: EdgeInsets.only(top: 20),
          child: Container(
            height: 120,
            width: 120,
            margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  )),
                  child: Container(
                    padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.0),
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ),
                ),
  //onPressed: ()=> _loadCategoryScreen(context, "$category"),
          );
      }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: <Widget>[
                  _header(context),
                  SizedBox(height: 20),
                  _categoryRow("Top Searches", LightColor.purple, LightColor.darkpurple),
                  SizedBox(height: 30),
                  _categoryList(context),
                  SizedBox(height: 30),
                  _categoryRow("Categories", LightColor.purple, LightColor.darkpurple),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            categoryButton(
                              image: 'images/artistry.jpg',
                              title: 'Makeup',
                            ), //Makeup
                            categoryButton(
                              image: 'images/Hair1.jpg',
                              title: 'Hairstyle',
                            ), //Skin care
                          ],
                        ), //Makeup, Skin Care
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            categoryButton(
                              image: 'images/nail.jpg',
                              title: 'Nails',
                            ), //Nutrition/ Dietitian
                            categoryButton(
                              image: 'images/nutrition.jpg',
                              title: 'Nutrition',
                            ), //Nail art
                          ],
                        ), //Nutrition/ Dietitian,Nail art
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            categoryButton(
                              image: 'images/ayurveda.jpg',
                              title: 'Ayurveda',
                            ), // Hair
                            categoryButton(
                                image: 'images/therapy.jpg',
                                title: 'Therapy'
                            ), // Spa
                          ],
                        ), //Hair courses,Spa therapist
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            categoryButton(
                              image: 'images/beauty.jpg',
                              title: 'Beauty',
                            ), // Hair
                            categoryButton(
                                image: 'images/model5.jpg',
                                title: 'Fashion'
                            ), // Spa
                          ],
                        ), //Ha
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
