import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/pages/login.dart';
import 'package:ftvapp/pages/register.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ftvapp/services/sign_in.dart';
import 'package:share/share.dart';
import 'package:ftvapp/services/auth.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:ftvapp/pages/login.dart';
class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}
AuthService _authService=AuthService();
Future signOut() async {
  try {
    await _authService.signOut();
  } catch (e) {
    print(e.toString());
    return null;
  }
}
class _AccountState extends State<Account> {
  bool condition = true;
  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 90,
          width: width,
          decoration: BoxDecoration(
            color: LightColor.purple,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, LightColor.lightpurple)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(width * .5, LightColor.darkpurple)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Account",
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _header(context),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(child: Image.asset('images/logo.png',
                          height: 170,
                          width: 170,)),
                      )),
                ],
              ),
              Visibility(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                  child: Column(
                    children: <Widget>[
                      ExpansionTile(
                        title: Text(
                          "About F Salon Academy",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        children: <Widget>[
                          Text(
                            "This course is a one-stop-shop for everything you'll need to know to get started with business foundation, along with a few incentives. We'll begin with the basics of business development, learning about marketing, finance and getting to know about public relations. ",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      ExpansionTile(
                        title: Text(
                          "Frequently asked questions",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        children: <Widget>[
                          ExpansionTile(
                            title: Text(
                                'How does this app help in building career in fashion?',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                )),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  "This course is a one-stop-shop for everything you'll need to know to get started with business foundation, along with a few incentives. We'll begin with the basics of business development, learning about marketing, finance and getting to know about public relations.",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          ExpansionTile(
                            title: Text(
                                'How does this app help in building career in fashion?',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                )),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  "This course is a one-stop-shop for everything you'll need to know to get started with business foundation, along with a few incentives. We'll begin with the basics of business development, learning about marketing, finance and getting to know about public relations.",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          ExpansionTile(
                            title: Text(
                                'How does this app help in building career in fashion?',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                )),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  "This course is a one-stop-shop for everything you'll need to know to get started with business foundation, along with a few incentives. We'll begin with the basics of business development, learning about marketing, finance and getting to know about public relations.",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: GestureDetector(
                          onTap: () => share(context),
                          child: Text(
                            "Share F Salon Academy app",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: condition == true ?
                Center(
                  child: Container(
                    width: 90,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        if(a==1) {
                          signOutGoogle();
                          Fluttertoast.showToast(msg: "Logout Success");
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
                        }
                        else {
                          signOut();
                          Fluttertoast.showToast(msg: "Logout Success");
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
                        }

                      },
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      color: LightColor.darkgrey,
                      splashColor: Colors.white,
                      textColor: Colors.white,
                    ),
                  ),
                ) :
                Center(
                  child: Container(
                    width: 90,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        if(a==0) {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
                          Fluttertoast.showToast(msg: "Login Success");
                          signOut();
                        }
                        else {
                          signOutGoogle();
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
                        }

                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      color: LightColor.darkgrey,
                      splashColor: Colors.white,
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
