import 'package:app7/src/screen/CartScreen.dart';
import 'package:flutter/material.dart';

class SingleMenuScreen extends StatefulWidget {
  var item;
  var cart;
  SingleMenuScreen({super.key, this.item, this.cart});

  @override
  State<SingleMenuScreen> createState() => _SingleMenuScreenState();
}

class _SingleMenuScreenState extends State<SingleMenuScreen> {
  cart(item, cartitem) {
    print(item);
    cartitem.add(item);

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CartScreen(item: item, cart: cartitem)));
  }

  @override
  Widget build(BuildContext context) {
    var cartitem = widget.cart;
    print(widget.item);
    var item1 = widget.item;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Single Menu")),
      body: Column(
        children: [
          Container(
            width: w,
            height: h * .88,
            color: Color.fromARGB(255, 69, 61, 37),
            child: Stack(
              children: [
                Container(
                  child: Container(
                    width: w,
                    height: h * .3,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 251, 251, 251),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                    ),
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.topCenter,
                        width: w,
                        child: Text(
                          "${item1['name']}",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: h * .5),
                  child: Container(
                    width: w,
                    height: h * .5,
                    child: Column(children: [
                      Container(
                        child: Column(children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 252, 252, 252),
                                  borderRadius: BorderRadius.circular(20)),
                              width: w,
                              margin: EdgeInsets.all(
                                20,
                              ),
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: w * .3,
                                    child: Text(
                                      "Rs.${item1['rate']}/-",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                      width: w * .3,
                                      child: Column(
                                        children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 16,
                                              ),
                                              Text(
                                                "3.4",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ],
                                          )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              child: Row(
                                            children: [
                                              Text(
                                                "324 Reviews",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                size: 16,
                                              ),
                                            ],
                                          )),
                                        ],
                                      ))
                                ],
                              )),
                        ]),
                      ),
                      Container(
                        child: Column(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            width: w,
                            height: h * .1,
                            child: ElevatedButton(
                                onPressed: () => cart(item1, cartitem),
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )),
                          ),
                        ]),
                      )
                    ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: h * .15),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    width: w * .8,
                    height: h * .3,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Color.fromARGB(255, 146, 145, 145),
                            blurRadius: 10.0,
                          )
                        ],
                        border: Border.all(
                            width: 5,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        color: Color.fromARGB(255, 234, 234, 233),
                        borderRadius: BorderRadius.circular(100)),
                    child: Stack(children: [
                      Container(
                        width: w,
                        child: Image.asset(
                          "${item1['image']}",
                          fit: BoxFit.cover,
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
