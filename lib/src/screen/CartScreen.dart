import 'package:app7/src/screen/PaymentScreen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  var item;
  var cart;
  CartScreen({super.key, required this.item, this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var title = "Cart Screen";
  Orderplace() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PaymentScreen()));
  }

  @override
  Widget build(BuildContext context) {
    var cartitem1 = widget.cart;
    var item1 = widget.item;
    print(widget.item);
    print("*******cart screen*****");
    print(cartitem1);
    print(item1);

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          children: [
            Container(
              width: w,
              height: h * .5,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  return Container(
                    width: w,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        new BoxShadow(
                          color: Color.fromARGB(255, 216, 216, 216),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          width: w * .4,
                          child: Image.asset(
                            "${cartitem1[index]['image']}",
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  );
                }),
                itemCount: cartitem1.length,
              ),
            ),
            Container(
              width: w,
              height: h * .38,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: w,
                      height: h * .1,
                      color: Color.fromARGB(255, 139, 255, 7),
                      child: Text("data"),
                    ),
                    Container(
                      width: w,
                      height: h * .1,
                      color: Color.fromARGB(255, 139, 255, 7),
                      child: Text("data"),
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: w,
                      height: h * .1,
                      child: ElevatedButton(
                          /*  style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 247, 125, 2))), */
                          onPressed: Orderplace,
                          child: Text(
                            "Place Order Now",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
