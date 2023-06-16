import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  List<String> product = [
    "Product1",
    "Product2",
    "product3",
    "product4",
    "product5",
    "product6",
    "product7"
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.amber,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/img1.jpg'),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: TextButton(
                          onPressed: () => {Scaffold.of(context).openDrawer()},
                          child: Image.asset(
                            "assets/images/logo1.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Top Rated",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      Container(
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .585,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .585,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                for (int i = 0; i < product.length; i++)
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 235, 209, 142),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    margin: EdgeInsets.all(10),
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .6,
                                            color: Color.fromARGB(
                                                255, 248, 7, 184),
                                            height: 100,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            color:
                                                Color.fromARGB(255, 43, 248, 7),
                                            height: 100,
                                          ),
                                        ]),
                                  ),
                              ],
                            )),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
