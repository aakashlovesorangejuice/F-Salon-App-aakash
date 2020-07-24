import 'package:flutter/material.dart';
import 'package:ftvapp/helper/courseModel.dart';
import 'package:ftvapp/helper/quad_clipper.dart';
import 'package:ftvapp/pages/dashboard.dart';
import 'package:ftvapp/contents/detailscreen.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:ftvapp/theme/theme.dart';

class Nail extends StatefulWidget {
  @override
  _NailState createState() => _NailState();
}

class _NailState extends State<Nail> {

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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => Dashboard()));
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Courses on Nails",
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


  Widget _courseList() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _courceInfo(CourseList.list[0],
                  _decorationContainerA(LightColor.lightpurple, -110, -85),
                  background: LightColor.lightpurple),
            ),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _courceInfo(CourseList.list[1], _decorationContainerB(),
                  background: LightColor.darkYellow),
            ),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _courceInfo(CourseList.list[2], _decorationContainerC(),
                  background: LightColor.darkpurple),
            ),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _courceInfo(CourseList.list[3], _decorationContainerD(),
                  background: LightColor.darkYellow),
            ),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _courceInfo(CourseList.list[2], _decorationContainerC(),
                  background: LightColor.darkpurple),
            ),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
              },
              child: _courceInfo(CourseList.list[3], _decorationContainerD(),
                  background: LightColor.darkYellow),
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(
      {Color primaryColor = Colors.redAccent,
        String imgPath,
        Widget backWidget}) {
    return Container(
        height: 190,
        width: width * .34,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: Color(0x12000000))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: backWidget,
        ));
  }

  Widget _courceInfo(CourseModel model, Widget decoration, {Color background}) {
    return Container(
        height: 170,
        width: width - 20,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: .7,
              child: _card(primaryColor: background, backWidget: decoration),
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: Text(model.name,
                                style: TextStyle(
                                    color: LightColor.darkgrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: background,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(model.noOfCourse,
                              style: TextStyle(
                                color: LightColor.grey,
                                fontSize: 14,
                              )),
                          SizedBox(width: 10)
                        ],
                      ),
                    ),
                    Text(model.university,
                        style: AppTheme.h6Style.copyWith(
                          fontSize: 12,
                          color: LightColor.grey,
                        )),
                    SizedBox(height: 15),
                    Text(model.description,
                        style: AppTheme.h6Style.copyWith(
                            fontSize: 12, color: LightColor.darkgrey)),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        _chip(model.tag1, LightColor.purple, height: 5),
                        SizedBox(
                          width: 10,
                        ),
                        _chip(model.tag2, LightColor.purple, height: 5),
                      ],
                    )
                  ],
                ))
          ],
        ));
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
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 12),
      ),
    );
  }

  Widget _decorationContainerA(Color primaryColor, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: LightColor.darkpurple,
          ),
        ),
        _smallContainer(LightColor.lightpurple, 40, 20),
        Positioned(
          top: -30,
          right: -10,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        ),
        Positioned(
          top: 110,
          right: -50,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: LightColor.darkpurple,
            child:
            CircleAvatar(radius: 40, backgroundColor: LightColor.lightpurple),
          ),
        ),
      ],
    );
  }

  Widget _decorationContainerB() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65,
          left: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.lightYellow,
            child: CircleAvatar(
                radius: 30, backgroundColor: LightColor.darkYellow),
          ),
        ),
        Positioned(
            bottom: -35,
            right: -40,
            child:
            CircleAvatar(backgroundColor: LightColor.yellow, radius: 40)),
        Positioned(
          top: 50,
          left: -40,
          child: _circularContainer(70, Colors.transparent,
              borderColor: Colors.white),
        ),
      ],
    );
  }

  Widget _decorationContainerC() {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: -65,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.lightpurple,
          ),
        ),
        Positioned(
            bottom: -30,
            right: -25,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.darkpurple,
                    radius: 40))),
        _smallContainer(
          LightColor.lightpurple,
          35,
          70,
        ),
      ],
    );
  }

  Widget _decorationContainerD() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65,
          left: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.lightYellow,
            child: CircleAvatar(
                radius: 30, backgroundColor: LightColor.darkYellow),
          ),
        ),
        Positioned(
            bottom: -35,
            right: -40,
            child:
            CircleAvatar(backgroundColor: LightColor.yellow, radius: 40)),
        Positioned(
          top: 50,
          left: -40,
          child: _circularContainer(70, Colors.transparent,
              borderColor: Colors.white),
        ),
      ],
    );
  }

  Positioned _smallContainer(Color primaryColor, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primaryColor.withAlpha(255),
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
                  _courseList()
                ],
              ),
            )));
  }
}
