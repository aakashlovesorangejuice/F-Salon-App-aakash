import 'package:flutter/material.dart';
import 'package:ftvapp/payment/canara.dart';
import 'package:ftvapp/payment/wallet.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  double width;
  int selectRadio;
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectRadio = val;
    });
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

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
                                "Payment",
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Select a payment method",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    )),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 70,
                    child: Card(
                      elevation: 3,
                      child: RadioListTile(
                        value: 1,
                        groupValue: selectedRadioTile,
                        title: Text("Add Debit/Credit/ATM Card"),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                          print("Radio tile pressed $val");
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 70,
                    child: Card(
                      elevation: 3,
                      child: RadioListTile(
                        value: 2,
                        groupValue: selectedRadioTile,
                        title: Text("Add Paytm Wallet"),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                          print("Radio tile pressed $val");
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 70,
                    child: Card(
                      elevation: 3,
                      child: RadioListTile(
                        value: 3,
                        groupValue: selectedRadioTile,
                        title: Text("Net Banking"),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                          print("Radio tile pressed $val");
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 155,
                    width: 300,
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text("Price Details",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                )),
                          ),
                          SizedBox(height: 5),
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
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: MaterialButton(onPressed: () {
                  if (selectedRadioTile == 1) {
                    _showBottomSheet();
                  }
                  else if (selectedRadioTile == 2){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Wallet()));
                  }
                  else {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Wallet()));
                  }
                },
                  child: Text("CONTINUE", style: TextStyle(color: Colors.white, fontSize: 18)),
                  color: LightColor.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Image(image: AssetImage("images/canara.png"), height: 30.0),
                  title: Text("Canara Bank",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Canara()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image(image: AssetImage("images/axis.png"), height: 30.0),
                  title: Text("Axis Bank",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image(image: AssetImage("images/sbi.png"), height: 30.0),
                  title: Text("State Bank of India",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image(image: AssetImage("images/icici.png"), height: 30.0),
                  title: Text("ICICI Bank",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image(image: AssetImage("images/hdfc.png"), height: 30.0),
                  title: Text("HDFC Bank",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image(image: AssetImage("images/citi.png"), height: 30.0),
                  title: Text("Citi Bank",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}