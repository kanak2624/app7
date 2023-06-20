import 'package:app7/src/components/ShopComponent.dart';
import 'package:app7/src/screen/SingleShopScreen.dart';
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
  List<String> shopname = ["Taco Bell", "LAXMI BAKEY", "Shiv sagar cafe"];
  List<String> shoploc = [
    "Shop No 04, Food Court, 3rd Floor",
    "Ram Gali Number 6, opp. Dashera Maidan",
    "Near Hanuman Dhaba, Jaipur, 302004, Raja park"
  ];
  List<String> shopimage = [
    "assets/images/shopImage/shop1.jpg",
    "assets/images/shopImage/shop2.jpg",
    "assets/images/shopImage/shop3.jpg"
  ];

  List<Map<String, dynamic>> menuitem = [
    {
      "product": [
        {
          "id": 1,
          "name": "SandWich",
          "rate": 100,
          "image": "assets/images/menuitem/sandwich.jpg"
        },
        {
          "id": 2,
          "name": "ChowMein",
          "rate": 120,
          "image": "assets/images/menuitem/ChowMein.jpg"
        },
        {
          "id": 3,
          "name": "HotDog",
          "rate": 220,
          "image": "assets/images/menuitem/hotdog.jpg"
        },
        {
          "id": 4,
          "name": "Burger",
          "rate": 250,
          "image": "assets/images/menuitem/burger.jpg"
        },
      ],
      "addtocart": []
    }
  ];
  SingleShop(String pname, String image, String loc,
      List<Map<String, dynamic>> menuitem) {
    print("Single shop");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SingleShopScreen(
            pname: pname, image: image, location: loc, menuitem: menuitem),
      ),
    );
  }

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
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Top Rated",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 3, 3, 3)),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          onTap: () {
                            print("tabb text");
                          },
                          child: Row(
                            children: [
                              Text(
                                "See All",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "sans-serif",
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .517,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .517,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                for (int i = 0; i < shopname.length; i++)
                                  ShopComponent(
                                      image: shopimage[i],
                                      pname: shopname[i],
                                      location: shoploc[i],
                                      btn: () => SingleShop(shopname[i],
                                          shopimage[i], shoploc[i], menuitem)),
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
