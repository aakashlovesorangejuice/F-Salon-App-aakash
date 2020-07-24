import 'package:flutter/material.dart';
import 'package:ftvapp/pages/cart_screen.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

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

  double width;

  @override
  Widget build(BuildContext context) {
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
                  top: 35,
                  left: 20,
                  child: Container(
                      width: width,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen()));
                              },
                              child: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 40)),
                        ],
                      ))),
              Center(
                  child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 18,),
                          Text("Checkout",
                            style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                  )
              ),
            ],
          )),
    );
  }
}
