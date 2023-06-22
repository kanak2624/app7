import 'package:app7/src/screen/PaymentScreen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  var item;
  var cart;

  CartScreen({super.key, required this.item, this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState(cart);
}

class _CartScreenState extends State<CartScreen> {
  var productdata = [
    {"id": 1, "name": "subtotal", "value": "0"},
    {"id": 2, "name": "shipping", "value": "0"},
    {"id": 3, "name": "taxes", "value": "0"},
  ];
  var cart1;
  var cart;
  _CartScreenState(this.cart);
  var title = "Cart Screen";
  Orderplace() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PaymentScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("********* init state  ***********");
    setState(() {
      cart:
      cart;
    });
    WidgetsBinding.instance
        .addPostFrameCallback((_) => afterLayoutWidgetBuild());
  }

  afterLayoutWidgetBuild() {
    print("*******************************");
    print("****************call again*************");
    print("*******************************");
  }

  Qtyadd(cart) {
    //afterLayoutWidgetBuild();
    print(cart);
    int c1 = cart["qty"];
    c1++;
    cart["qty"] = c1;
    setState(() {
      cart:
      cart["qty"];
    });
  }

  Qtysub(cart) {
    print(cart);
    var c1 = cart["qty"];
    c1--;
    cart["qty"] = c1;
    setState(() {
      cart:
      cart["qty"];
    });
  }

  @override
  Widget build(BuildContext context) {
    print("*******cart screen*****");
    print(cart);
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
                itemCount: cart.length,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          width: w * .3,
                          child: Image.asset(
                            "${cart[index]['image']}",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Text("data"),
                        ),
                        Container(
                          child: Row(children: [
                            TextButton(
                                onPressed: () => Qtysub(cart[index]),
                                child: Text(
                                  "-",
                                  style: TextStyle(fontSize: 50),
                                )),
                            Text("${cart[index]['qty']}"),
                            /*   Text("${c}", style: TextStyle(fontSize: 20)), */
                            TextButton(
                                onPressed: () => Qtyadd(cart[index]),
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 30),
                                ))
                          ]),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              width: w,
              height: h * .38,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: w,
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: productdata.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: w,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${productdata[index]["name"]}"),
                                Text("Rs.${productdata[index]["value"]}/-")
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "Rs. 2040/-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
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
