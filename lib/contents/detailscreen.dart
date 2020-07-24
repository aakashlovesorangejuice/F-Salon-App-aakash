import 'package:flutter/material.dart';
import 'package:ftvapp/pages/cart_screen.dart';
import 'package:ftvapp/pages/coursepage.dart';
//import 'package:ftvapp/pages/dashboard.dart';
//import 'package:ftvapp/pages/home_page.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:ftvapp/source/video_player.dart';

class DetailScreen extends StatelessWidget {
//  DetailScreen({Key key}) : super(key: key);

  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Container(
            height: 360,
            width: width,
            decoration: BoxDecoration(color: LightColor.purple),
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
                      child: _circularContainer(width * .7, Colors.transparent, borderColor: Colors.white38)),
                  Positioned(
                      top: 30,
                      left: 0,
                      child: Container(
                          width: width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (_) => CoursePage()));
                                    },
                                    child: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 40)),
                                SizedBox(height: 10),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "Bussiness foundation: \n Learn & improve your \n business skills",
                                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500)),
                                      SizedBox(height: 20),
                                      Text(
                                          "Learn & practice your business skills as well as techniques to work in different dimensions",
                                          style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500)),
                                      SizedBox(height: 20),
                                      Container(
                                          height: 40,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: <Widget>[
                                                Container(
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey[200], borderRadius: BorderRadius.circular(90)),
                                                    child: Row(
                                                        children: <Widget>[
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(Icons.star, size: 18)),
                                                          Text(
                                                              "4.3",
                                                              style: TextStyle(fontSize: 14, color: Colors.black)),
                                                        ])),
                                                SizedBox(width: 5),
                                                Container(
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey[200], borderRadius: BorderRadius.circular(40)),
                                                    child: Row(
                                                        children: <Widget>[
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(Icons.person_outline, size: 18)),
                                                          Text(
                                                              "2,458 Enrolled",
                                                              style: TextStyle(fontSize: 14, color: Colors.black)),
                                                        ])),
                                                SizedBox(width: 5),
                                                Container(
                                                    width: 130,
                                                    decoration: BoxDecoration(color: Colors.grey[200],
                                                        borderRadius: BorderRadius.circular(40)),
                                                    child: Row(
                                                        children: <Widget>[
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(Icons.play_arrow, size: 18)),
                                                          Text(
                                                              "1 total hour",
                                                              style: TextStyle(fontSize: 14, color: Colors.black)),
                                                        ])),
                                              ])),
                                    ]),
                              ]))),
                ])));
  }


  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
        height: height,
        width: height,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color,
          border: Border.all(color: borderColor, width: borderWidth),
        ));
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
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                          "\$45.00",
                          style: TextStyle(fontSize: 30, color: Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.only(left: 10.0, right:10.0),
                        child: Center(
                          child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (_) => VideoPlay()));
                                    },
                                    child: Text(
                                        'Enroll now',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(letterSpacing: 2, color: Colors.white, fontSize: 22)),
                                  ))),
                        )),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.only(left: 10.0, right:10.0),
                        child: Center(
                          child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(color: LightColor.lightpurple,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
//                                    Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen()));
                                    },
                                    child: Text(
                                        'Add to Cart',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(letterSpacing: 2, color: Colors.white, fontSize: 22)),
                                  ))),
                        )),
                    SizedBox(height: 30),
                    Divider(height: 10, thickness: 0.5, color: Colors.grey[900], indent: 15, endIndent: 20),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Description:",
                                  style: TextStyle(fontSize: 20, color: Color(0xFF0D1333), fontWeight: FontWeight.w600)),
                            ])),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                            child: Text(
                                "This course is a one-stop-shop for everything you'll need to know to get started with business foundation, along with a few incentives. We'll begin with the basics of business development, learning about marketing, finance and getting to know about public relations.",
                                style: TextStyle(fontSize: 16)))),
                    SizedBox(height: 20),
                    Divider(height: 10, thickness: 0.5, color: Colors.grey[900], indent: 15, endIndent: 20),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Column(
                            children: <Widget>[
                              Text("This Course includes:",
                                  style: TextStyle(fontSize: 20, color: Color(0xFF0D1333), fontWeight: FontWeight.w600)),
                            ])),
                    SizedBox(height: 10,),
                    Container(
                        height: 210,
                        child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.play_circle_outline)),
                                      SizedBox(width: 5),
                                      Text(
                                          "10 total hours on-demand video",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.assignment)),
                                      SizedBox(width: 5),
                                      Text(
                                          "14 Articles",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.lightbulb_outline)),
                                      SizedBox(width: 5),
                                      Text(
                                          "Full liftetime access",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.insert_drive_file)),
                                      SizedBox(width: 5),
                                      Text(
                                          "Support Files",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.call_to_action)),
                                      SizedBox(width: 5),
                                      Text(
                                          "Certificate of Completion",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              )
                            ])),
                    Divider(height: 10, thickness: 0.5, color: Colors.grey[900], indent: 15, endIndent: 20),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                            children: <Widget>[
                              Text("What will I learn?",
                                  style: TextStyle(fontSize: 20, color: Color(0xFF0D1333), fontWeight: FontWeight.w600)),
                            ])),
                    SizedBox(height: 10,),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 190,
                        child: Column(
                            children: <Widget>[
                              SizedBox(width: 20),
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.check)),
                                      SizedBox(width: 5),
                                      Text(
                                          "Hands-on business marketing",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.check)),
                                      SizedBox(width: 5),
                                      Text(
                                          "Expand foundation on global level",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.check)),
                                      SizedBox(width: 5),
                                      Text(
                                          "Lifetime learning experience",
                                          style: TextStyle(fontSize: 16, color: Colors.black)),
                                    ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                    children: <Widget>[
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.check)),
                                      SizedBox(width: 5),
                                      Flexible(
                                        child: Text(
                                            "Working in finance & technical environment",
                                            style: TextStyle(fontSize: 16, color: Colors.black)),
                                      )
                                    ]),
                              )
                            ])),
                  ]),
            )));
  }}