import 'package:flutter/material.dart';
import 'package:ftvapp/Cart/prod_model.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductScreen extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  ProductScreen(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("Ayurveda", 250, "Ayurveda", "images/ayurveda.jpg"),
    ProductModel("Beauty care", 400, "Beauty", "images/beauty.jpg"),
    ProductModel("Nail spa", 200, "Nails", "images/nail.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        itemBuilder: (context, index){
          return Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
                height: 90.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
            child: ListTile(
              leading: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage(products[index].img)),
              title: Text(products[index].name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
              subtitle: Text("\Category: ${products[index].ctgy}",
                  style: TextStyle(
                    fontSize: 15,
                  )),
              trailing: Text("\$${products[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
              onTap: (){
                _valueSetter(products[index]);
                Fluttertoast.showToast(msg: "Item checked out",
                toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                );
              },
            ),
          );
        },
        separatorBuilder: (context, index){
          return Divider(
            color: LightColor.lightblack,
            indent: 15,
            endIndent: 15,
          );
        },
        itemCount: products.length
    );
  }
}
