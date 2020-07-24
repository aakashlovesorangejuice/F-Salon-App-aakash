import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:ftvapp/pages/announcements.dart';
import 'package:ftvapp/contents/detailscreen.dart';
import 'package:ftvapp/source/chewie_list_item.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:share/share.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  @override
  _VideoPlayState createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  int c = 0;
  double width;
  bool lectures = true;
  bool more = false;
  bool announcements = false;
  bool instructors = false;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 90,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                      ],
                    ),
                  )),
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

  void share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    final String text = "Business Foundation";
    final String subject = "Instructor Name";
    Share.share(text,
        subject: subject,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Material(
          elevation: 10,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _header(context),
                Container(
                  height: 260,
                  child: ListView(
                    children: <Widget>[
                      ChewieListItem(
                        videoPlayerController:
                        VideoPlayerController.asset("videos/video1.mp4"),
                        looping: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Business Foundation",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Instructor Name",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              lectures = true;
                              more = false;
                            });
                          },
                          child: Text(
                            "Lectures",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        VerticalDivider(
                          color: LightColor.black,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              more = true;
                              lectures = false;
                            });
                          },
                          child: Text(
                            "More",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    )),
                Row(children: <Widget>[
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      )),
                ]),
                Visibility(
                  visible: lectures,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          CourseContent(
                            number: "01",
                            duration: 5.35,
                            title: "Welcome to the Course",
                            isDone: true,
                          ),
                          CourseContent(
                            number: '02',
                            duration: 19.04,
                            title: "Beauty Care - Intro",
                            isDone: true,
                          ),
                          CourseContent(
                            number: '03',
                            duration: 15.35,
                            title: "Beauty Care Process",
                            isDone: false,
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: "Customer Perspective",
                            isDone: false,
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: "Customer Perspective",
                            isDone: false,
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: "Customer Perspective",
                            isDone: false,
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: "Customer Perspective",
                            isDone: false,
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: "Customer Perspective",
                            isDone: false,
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: "Customer Perspective",
                            isDone: false,
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: "Customer Perspective",
                            isDone: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: more,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (c == 0) {
                                announcements = true;
                                c = 1;
                              } else {
                                announcements = false;
                                c = 0;
                              }
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.more_horiz,
                                size: 25,
                              ),
                              VerticalDivider(),
                              Text(
                                "About The Course",
                                style: TextStyle(
                                     fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        Visibility(
                          visible: announcements,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              "This course is a one-stop-shop for everything you'll need to know to get started with business foundation, along with a few incentives. We'll begin with the basics of business development, learning about marketing, finance and getting to know about public relations. ",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (c == 0) {
                                instructors = true;
                                c = 1;
                              } else {
                                instructors = false;
                                c = 0;
                              }
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                size: 25,
                              ),
                              VerticalDivider(),
                              Text(
                                "About The Instructor",
                                style: TextStyle(
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        Visibility(
                          visible: instructors,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              "This course is a one-stop-shop for everything you'll need to know to get started with business foundation, along with a few incentives. We'll begin with the basics of business development, learning about marketing, finance and getting to know about public relations.",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () => share(context),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.share,
                                size: 25,
                              ),
                              VerticalDivider(),
                              Text(
                                "Share This Course",
                                style: TextStyle(
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (_) => Announcements()));
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.notifications,
                                size: 25,
                              ),
                              VerticalDivider(),
                              Text(
                                "Announcements",
                                style: TextStyle(
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Lectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
//                          Text("Course Content",
//                            style: TextStyle(
//                              fontSize: 24,
//                              color: Color(0xFF0D1333),
//                              fontWeight: FontWeight.bold,
//                            ),
//                          ),
//                          SizedBox(height: 20),
          CourseContent(
            number: "01",
            duration: 5.35,
            title: "Welcome to the Course",
            isDone: true,
          ),
          CourseContent(
            number: '02',
            duration: 19.04,
            title: "Beauty Care - Intro",
            isDone: true,
          ),
          CourseContent(
            number: '03',
            duration: 15.35,
            title: "Beauty Care Process",
            isDone: false,
          ),
          CourseContent(
            number: '04',
            duration: 5.35,
            title: "Customer Perspective",
            isDone: false,
          ),
          CourseContent(
            number: '04',
            duration: 5.35,
            title: "Customer Perspective",
            isDone: false,
          ),
          CourseContent(
            number: '04',
            duration: 5.35,
            title: "Customer Perspective",
            isDone: false,
          ),
          CourseContent(
            number: '04',
            duration: 5.35,
            title: "Customer Perspective",
            isDone: false,
          ),
        ],
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;
  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF0D1333),
              fontWeight: FontWeight.bold,
            ).copyWith(
              color: Color(0xFF0D1333).withOpacity(.15),
              fontSize: 32,
            ),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                    color: Color(0xFF0D1333).withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF0D1333),
                    // fontWeight: FontWeight.bold,
                  ).copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: LightColor.yellow.withOpacity(isDone ? 1 : .5),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => VideoPlay()));
              },
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//class VideoPlay extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Video Player"),
//      ),
//      body: ListView(
//        children: <Widget>[
//          ChewieListItem(
//            videoPlayerController: VideoPlayerController.asset("videos/video1.mp4"),
//            looping: true,
//          )
//        ],
//      ),
//    );
//  }
//}