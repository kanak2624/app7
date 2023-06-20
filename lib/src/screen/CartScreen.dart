import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  var item;
  CartScreen({super.key, required this.item});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var title = "Cart Screen";

  @override
  Widget build(BuildContext context) {
    var item1 = widget.item;
    print("*******cart screen*****");
    print(item1);

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(children: [
        Container(
          width: w,
          child: Row(children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(30)),
              width: w * .4,
              child: Image.asset("${item1['image']}"),
            ),
          ]),
        )
      ]),
    );
  }
}
