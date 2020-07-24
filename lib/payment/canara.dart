import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/payment/wallet.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class Canara extends StatefulWidget {
  @override
  _CanaraState createState() => _CanaraState();
}

class _CanaraState extends State<Canara> {

  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 80,
          width: width,
          decoration: BoxDecoration(
            color: LightColor.lightblack,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, LightColor.black)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(width * .5, LightColor.black)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 30,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Card Payment",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                      child: Container(
                        height: 220,
                        child: Card(
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Card Number",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23)),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Card Number",
                                      hintStyle:
                                      TextStyle(color: LightColor.darkgrey, fontSize: 15.0)),
                                ),
                                SizedBox(height: 20),
                                Text("Valid thru",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15, right: 30),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "  MM",
                                              hintStyle:
                                              TextStyle(color: LightColor.darkgrey, fontSize: 15.0)),
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 50),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "   YY",
                                              hintStyle:
                                              TextStyle(color: LightColor.darkgrey, fontSize: 15.0)),
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10, right: 20),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "    CVV",
                                              hintStyle:
                                              TextStyle(color: LightColor.darkgrey, fontSize: 15.0)),
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 175,
                        width: 300,
                        child: Card(
                          elevation: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 12, top: 10),
                                child: Text("Price Details",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    )),
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: LightColor.darkgrey,
                                indent: 10,
                                endIndent: 10,
                              ),
                              ListTile(
                                title: Text("Price (1 item)"),
                                trailing: Text("Rs.250"),
                              ),
                              ListTile(
                                title: Text("Amount Payable",
                                    style:  TextStyle(
                                      fontWeight: FontWeight.w600,
                                    )),
                                trailing: Text("Rs.250",
                                    style:  TextStyle(
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]))),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: MaterialButton(onPressed: () {},
                  child: Text("PAY Rs. 250", style: TextStyle(color: Colors.white, fontSize: 18)),
                  color: LightColor.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}