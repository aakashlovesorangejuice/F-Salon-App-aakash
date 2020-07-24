import 'dart:io';
import 'package:ftvapp/pages/dashboard.dart';
import 'package:ftvapp/pages/login.dart';
import 'package:ftvapp/intropages/intro_data.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class IntroLayout extends StatefulWidget {
  @override
  _IntroLayoutState createState() => _IntroLayoutState();
}

class _IntroLayoutState extends State<IntroLayout> {
  List<IntroModel> slides = new List<IntroModel>();
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          controller: pageController,
          itemCount: slides.length,
          onPageChanged: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index) {
            return IntroSlider(
              imageAssetPath: slides[index].getImageAssetPath(),
              title: slides[index].getTitle(),
              content: slides[index].getContent(),
            );
          }),
      bottomSheet: Row(
        children: <Widget>[
          /*Expanded(              //ADD ABOUT APP HERE IN PLACE OF BROWSE
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: Platform.isIOS ? 70 : 60,
                color: LightColor.lightpurple,
                child: Text(
                  "BROWSE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),*/
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: Platform.isIOS ? 70 : 60,
              color: LightColor.lightpurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < slides.length; i++)
                    currentIndex == i
                        ? pageIndexIndicator(true)
                        : pageIndexIndicator(false)
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: Platform.isIOS ? 70 : 60,
                color: LightColor.lightpurple,
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroSlider extends StatelessWidget {
  String imageAssetPath, title, content;

  IntroSlider({this.imageAssetPath, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath),
          SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                fontFamily: 'Nunito',
            ),
          ),
        ],
      ),
    );
  }
}
