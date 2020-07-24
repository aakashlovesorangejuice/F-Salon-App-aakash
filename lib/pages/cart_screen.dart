//class _CartScreenState extends State<CartScreen> {
//  double width;
//  List picked = [false, false];
//  int totalAmount = 0;
//  pickToggle(index) {
//    setState(() {
//      picked[index] = !picked[index];
//      getTotalAmount();
//    });
//  }
//  getTotalAmount() {
//    var count = 0;
//    for (int i = 0; i < picked.length; i++) {
//      if (picked[i]) {
//        count = count + 1;
//      }
//      if (i == picked.length - 1) {
//        setState(() {
//          totalAmount = 248 * count;
//        });
//      }
//    }
//  }
//  @override
//  Widget build(BuildContext context) {
//    width = MediaQuery.of(context).size.width;
//    return Scaffold(
//        body: SingleChildScrollView(
//            child: Container(
//              child: Column(
//                  children: <Widget>[
//                    _header(context),
//                    Cart(),
//                  ]),
//            )),
//      bottomNavigationBar: Container(
//        color: Colors.white,
//        child: Row(
//          children: <Widget>[
//            Expanded(
//              child: ListTile(
//                title: Text("Total:"),
//                subtitle: Text("\$230"),
//              ),
//            ),
//            Expanded(
//              child: Padding(
//                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
//                child: MaterialButton(onPressed: () {},
//                child: Text("Check out", style: TextStyle(color: Colors.white)),
//                  color: Colors.red,
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
////  Positioned(
////  child: Column(
////  children: <Widget>[
////  itemCard('Nails and Spa', 'Nails', '248',
////  'images/nail.jpg', true, 0),
////  itemCard('Ayurveda', 'Ayurveda', '380',
////  'images/ayurveda.jpg', true, 1),
////  itemCard('Nails and Spa', 'Nails', '248',
////  'images/nail.jpg', false, 2),
////  ],
////  ),
////  ),
////  Padding(
////  padding: EdgeInsets.only(right: 5),
////  child: Container(
////  height: 50.0,
////  width: double.infinity,
////  child: Row(
////  mainAxisAlignment: MainAxisAlignment.end,
////  children: <Widget>[
////  Text('Total: \$' + totalAmount.toString(),
////  style: TextStyle(
////  fontSize: 20,
////  fontWeight: FontWeight.bold,
////  )),
////  SizedBox(width: 10.0),
////  Padding(
////  padding: const EdgeInsets.all(8.0),
////  child: RaisedButton(
////  onPressed: () {},
////  elevation: 0.5,
////  color: Colors.red,
////  child: Text('Pay Now',
////  style: TextStyle(
////  fontSize: 19,
////  )),
////  textColor: Colors.white,
////  ),
////  ),
////  ]))),
////
////  Widget itemCard(itemName, category, price, imgPath, available, i) {
////    return InkWell(
////      onTap: () {
////        if (available) {
////          pickToggle(i);
////        }
////      },
////      child: Padding(
////          padding: EdgeInsets.all(10.0),
////          child: Material(
////              borderRadius: BorderRadius.circular(10.0),
////              elevation: 3.0,
////              child: Container(
////                padding: EdgeInsets.only(left: 15.0, right: 10.0),
////                width: 350,
////                height: 120.0,
////                decoration: BoxDecoration(
////                    color: Colors.white,
////                    borderRadius: BorderRadius.circular(10.0)),
////                child: Row(
////                    children: <Widget>[
////                      Column(
////                        mainAxisAlignment: MainAxisAlignment.center,
////                        children: <Widget>[
////                          Container(
////                              height: 20.0,
////                              width: 20.0,
////                              decoration: BoxDecoration(
////                                color: available
////                                    ? Colors.grey.withOpacity(0.4)
////                                    : Colors.red.withOpacity(0.4),
////                                borderRadius: BorderRadius.circular(12.5),
////                              ),
////                              child: Center(
////                                  child: available
////                                      ? Container(
////                                    height: 12.0,
////                                    width: 12.0,
////                                    decoration: BoxDecoration(
////                                        color: picked[i]
////                                            ? LightColor.yellow
////                                            : Colors.grey
////                                            .withOpacity(0.4),
////                                        borderRadius: BorderRadius.circular(
////                                            6.0)),
////                                  ) : Container()))
////                        ],
////                      ),
////                      SizedBox(width: 20.0),
////                      Container(
////                        height: 95.0,
////                        width: 95.0,
////                        decoration: BoxDecoration(
////                            image: DecorationImage(
////                                image: AssetImage(imgPath),
////                                fit: BoxFit.contain)),
////                      ),
////                      SizedBox(width: 20.0),
////                      Column(
////                          mainAxisAlignment: MainAxisAlignment.center,
////                          crossAxisAlignment: CrossAxisAlignment.start,
////                          children: <Widget>[
////                            Row(
////                              children: <Widget>[
////                                Text(
////                                  itemName,
////                                  style: TextStyle(
////                                      fontWeight: FontWeight.bold,
////                                      fontSize: 17.0),
////                                ),
////                                SizedBox(width: 10.0),
////                                available
////                                    ? picked[i]
////                                    ? Text(
////                                  'x1',
////                                  style: TextStyle(
////                                      fontWeight: FontWeight.bold,
////                                      fontSize: 17.0,
////                                      color: Colors.grey),
////                                )
////                                    : Container()
////                                    : Container()
////                              ],
////                            ),
////                            SizedBox(height: 8.0),
////                            available
////                                ? Text(
////                              'Category: ' + category,
////                              style: TextStyle(
////                                  fontWeight: FontWeight.bold,
////                                  fontSize: 16.0,
////                                  color: Colors.grey),
////                            )
////                                : OutlineButton(
////                              onPressed: () {},
////                              borderSide: BorderSide(
////                                  color: Colors.red,
////                                  width: 1.0,
////                                  style: BorderStyle.solid),
////                              child: Center(
////                                child: Text('Find Similar',
////                                    style: TextStyle(
////                                        fontWeight: FontWeight.bold,
////                                        fontSize: 12.0,
////                                        color: Colors.red)),
////                              ),
////                            ),
////                            SizedBox(height: 10.0),
////                            available
////                                ? Text(
////                              '\$' + price,
////                              style: TextStyle(
////                                  fontWeight: FontWeight.bold,
////                                  fontSize: 18.0,
////                                  color: LightColor.yellow),
////                            ) : Container(),
////                          ]),
////                    ]),
////              ))),
////    );
////  }
//}
import 'package:ftvapp/Cart/prod_model.dart';
import 'package:ftvapp/Cart/prod_screen.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/pages/dashboard.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:ftvapp/Cart/checkout_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                                Navigator.push(context, MaterialPageRoute(builder: (_) => Dashboard()));
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
                          Text("Cart",
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

  Widget _cartBody(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: <Widget>[
          ProductScreen((selectedProduct) {
            setState(() {
              cart.add(selectedProduct); //update
              sum = 0;
              cart.forEach((item) {
                sum = sum + item.price;
              });
            });
          }),
        ],
      ),
    );
  }

  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
            children: <Widget>[
              _header(context),
              SizedBox(height: 10,),
              _cartBody(context),
            ]),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                child: MaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => CheckoutScreen(cart, sum)));
                },
                  child: Text("Check out", style: TextStyle(color: Colors.white)),
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
