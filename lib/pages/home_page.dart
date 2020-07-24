import 'package:flutter/material.dart';
import 'package:ftvapp/contents/Hair.dart';
import 'package:ftvapp/contents/beauty.dart';
import 'package:ftvapp/contents/fashion.dart';
import 'package:ftvapp/contents/nail.dart';
import 'package:ftvapp/contents/nutritionist.dart';
import 'package:ftvapp/contents/therapy.dart';
import 'package:ftvapp/helper/quad_clipper.dart';
import 'package:ftvapp/pages/cart_screen.dart';
import 'package:ftvapp/pages/coursepage.dart';
import 'package:ftvapp/contents/detailscreen.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
        height: 150,
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
              top: 0,
              left: 0,
              child: Container(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 30),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen()));
                        },
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Learn and Explore!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Find new courses you may want to learn",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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


  Widget _categoryRow(
      String title,
      Color primary,
      Color textColor,
      ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: LightColor.darkgrey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          _chip("See all", primary)
        ],
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
                  SizedBox(width: 10),
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
                  _chip("Modelling", LightColor.darkgrey, height: 5),
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
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Hair()));
                    },
                    child: _chip(
                        "Hairstyle",
                        LightColor.darkgrey,
                        height: 5),
                  ),
                  SizedBox(width: 10),
                  _chip("Spa", LightColor.darkgrey, height: 5),
                  SizedBox(width: 10),
                  _chip("Makeup", LightColor.darkgrey, height: 5),
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
                  _chip("Body Care", LightColor.darkgrey, height: 5),
                ],
              )),
        ],
      ),
    );
  }


  Widget _featuredRowA(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => CoursePage()));
              },
              child: _card(
                primary: LightColor.darkYellow,
                backWidget:
                _decorationContainerA(LightColor.lightYellow, 50, -30),
                chipColor: LightColor.yellow,
                chipText1: "Nutritional Learning & foundation",
                chipText2: "10 Cources",
                isPrimaryCard: true,
                imgPath:
                "https://jshopping.in/images/detailed/591/ibboll-Fashion-Mens-Optical-Glasses-Frames-Classic-Square-Wrap-Frame-Luxury-Brand-Men-Clear-Eyeglasses-Frame.jpg",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => Beauty()));
              },
              child: _card(
                primary: LightColor.purple,
                chipColor: LightColor.extraDarkPurple,
                backWidget: _decorationContainerB(LightColor.purple, 90, -40),
                chipText1: "Become a beauty expert",
                chipText2: "7 Cources",
                imgPath:
                "https://hips.hearstapps.com/esquireuk.cdnds.net/16/39/980x980/square-1475143834-david-gandy.jpg?resize=480:*",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _card(
                primary: LightColor.lightYellow,
                chipColor: LightColor.darkYellow,
                backWidget: _decorationContainerC(LightColor.yellow, 50, -30),
                chipText1: "Become a Hairstylist",
                chipText2: "5 Cources",
                imgPath:
                "https://www.visafranchise.com/wp-content/uploads/2019/05/patrick-findaro-visa-franchise-square.jpg",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _card(
                primary: LightColor.lightpurple,
                chipColor: LightColor.extraDarkPurple,
                backWidget: _decorationContainerD(LightColor.purple, -50, 30,
                    secondary: LightColor.lightpurple,
                    secondaryAccent: LightColor.darkpurple),
                chipText1: "Become a Fashionista",
                chipText2: "8 Cources",
                imgPath:
                "https://d1mo3tzxttab3n.cloudfront.net/static/img/shop/560x580/vint0080.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _featuredRowB(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => Beauty()));
              },
              child: _card(
                primary: LightColor.yellow,
                chipColor: LightColor.darkYellow,
                backWidget: _decorationContainerD(
                    LightColor.lightYellow, -100, -65,
                    secondary: LightColor.yellow,
                    secondaryAccent: LightColor.darkYellow),
                chipText1: "Introduction to Beauty care",
//                chipText2: "4 Cources",
                isPrimaryCard: true,
                imgPath:
                "https://www.reiss.com/media/product/946/218/silk-paisley-printed-pocket-square-mens-morocco-in-pink-red-20.jpg?format=jpeg&auto=webp&quality=85&width=1200&height=1200&fit=bounds",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _card(
                primary: LightColor.lightpurple,
                chipColor: LightColor.extraDarkPurple,
                backWidget: _decorationContainerE(
                  LightColor.purple,
                  100,
                  -20,
                  secondary: LightColor.darkpurple,
                ),
                chipText1: "Skin care as a foundation",
//                  chipText2: "8 Cources",
                imgPath:
                "https://i.dailymail.co.uk/i/pix/2016/08/05/19/36E9139400000578-3725856-image-a-58_1470422921868.jpg",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _card(
                primary: LightColor.lightYellow,
                chipColor: LightColor.darkYellow,
                backWidget: _decorationContainerF(
                    LightColor.darkYellow, LightColor.darkYellow, 50, -30),
                chipText1: "Steps to acheive clear skin",
//                  chipText2: "6 Cources",
                imgPath:
                "https://www.reiss.com/media/product/945/066/03-2.jpg?format=jpeg&auto=webp&quality=85&width=632&height=725&fit=bounds",
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _card(
                primary: LightColor.purple,
                chipColor: LightColor.extraDarkPurple,
                backWidget: _decorationContainerA(
                  LightColor.lightpurple,
                  -50,
                  30,
                ),
                chipText1: "Become a Beauty expert",
//                chipText2: "8 Cources",
                imgPath:
                "https://img.alicdn.com/imgextra/i4/52031722/O1CN0165X68s1OaiaYCEX6U_!!52031722.jpg",
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _card(
      {Color primary = Colors.redAccent,
        String imgPath,
        String chipText1 = '',
        String chipText2 = '',
        Widget backWidget,
        Color chipColor = LightColor.orange,
        bool isPrimaryCard = false}) {
    return Container(
      height: isPrimaryCard ? 180 : 180,
      width: isPrimaryCard ? width * .32 : width * .32,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: primary.withAlpha(200),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 10,
                color: LightColor.lightpurple.withAlpha(20))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          child: Stack(
            children: <Widget>[
              backWidget,
              Positioned(
                  top: 20,
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: NetworkImage(imgPath),
                  )),
              Positioned(
                bottom: 10,
                left: 10,
                child: _cardInfo(chipText1, chipText2,
                    Colors.white, chipColor,
                    isPrimaryCard: isPrimaryCard),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _cardInfo(String title, String courses, Color textColor, Color primary,
      {bool isPrimaryCard = false}) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            width: width * .32,
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: isPrimaryCard ? Colors.white : textColor),
            ),
          ),
          SizedBox(height: 5),
          _chip(courses, primary, height: 5, isPrimaryCard: isPrimaryCard)
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


  Widget _decorationContainerA(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: primary.withAlpha(255),
          ),
        ),
        _smallContainer(primary, 20, 40),
        Positioned(
          top: 20,
          right: -30,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }


  Widget _decorationContainerB(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65,
          right: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.darkpurple,
            child: CircleAvatar(radius: 30, backgroundColor: primary),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.lightpurple, radius: 40)))
      ],
    );
  }


  Widget _decorationContainerC(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.darkYellow.withAlpha(100),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.darkYellow, radius: 40))),
        _smallContainer(
          LightColor.yellow,
          35,
          70,
        )
      ],
    );
  }


  Widget _decorationContainerD(Color primary, double top, double left,
      {Color secondary, Color secondaryAccent}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: secondary,
          ),
        ),
        _smallContainer(Colors.white, 18, 35, radius: 12),
        Positioned(
          top: 130,
          left: -50,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: primary,
            child: CircleAvatar(radius: 50, backgroundColor: secondaryAccent),
          ),
        ),
        Positioned(
          top: -30,
          right: -40,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }


  Widget _decorationContainerE(Color primary, double top, double left,
      {Color secondary}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: primary.withAlpha(100),
          ),
        ),
        Positioned(
            top: 40,
            right: -25,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: primary, radius: 40))),
        Positioned(
            top: 45,
            right: -50,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: secondary, radius: 50))),
        _smallContainer(LightColor.darkpurple, 15, 90, radius: 5)
      ],
    );
  }


  Widget _decorationContainerF(
      Color primary, Color secondary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: 25,
            right: -20,
            child: RotatedBox(
              quarterTurns: 1,
              child: ClipRect(
                  clipper: QuadClipper(),
                  child: CircleAvatar(
                      backgroundColor: primary.withAlpha(100), radius: 50)),
            )),
        Positioned(
            top: 34,
            right: -8,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: secondary.withAlpha(100), radius: 40))),
        _smallContainer(LightColor.lightYellow, 15, 90, radius: 5)
      ],
    );
  }


  Positioned _smallContainer(Color primary, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primary.withAlpha(255),
        ));
  }


  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  _header(context),
                  SizedBox(height: 20),
                  _categoryRow("Categories", LightColor.purple, LightColor.darkpurple),
                  SizedBox(height: 20),
                  _categoryList(context),
                  SizedBox(height: 30),
                  _categoryRow("Featured", LightColor.purple, LightColor.purple),
                  _featuredRowA(context),
                  SizedBox(height: 0),
                  _categoryRow("Top Courses on Beauty", LightColor.purple, LightColor.darkpurple),
                  _featuredRowB(context),
                ],
              ),
            )));
  }
}
