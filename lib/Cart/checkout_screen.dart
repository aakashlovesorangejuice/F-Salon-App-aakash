import 'package:flutter/material.dart';
import 'package:ftvapp/pages/cart_screen.dart';
import 'package:ftvapp/payment/paymentpage.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:ftvapp/theme/header.dart';

class CheckoutScreen extends StatelessWidget {
  final cart;
  final sum;

  CheckoutScreen(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
            children: <Widget>[
              Header(),
              SizedBox(height: 10,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListView.separated(
                      itemBuilder: (context, index){
                        return ListTile(
                          title: Text(cart[index].name),
                          trailing: Text("\$${cart[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
                          onTap: (){},
                        );
                      },
                      separatorBuilder: (context, index){
                        return Divider();
                      },
                      itemCount: cart.length,
                      shrinkWrap: true,
                    ),
                    Divider(),
                  ],
                ),
              )
            ]),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total: \$$sum"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: MaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => PaymentPage()));
                },
                  child: Text("Pay Now", style: TextStyle(color: Colors.white)),
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
