//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:ftvapp/pages/register.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:ftvapp/intropages/intro_layout.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Splash(),
));

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset('images/logo.png'),
      loaderColor: Colors.white,
      photoSize: 100.0,
      navigateAfterSeconds: IntroLayout(),
//      TODO: Add Wrapper , Once Firebase Authentication is sorted
    );
  }
}