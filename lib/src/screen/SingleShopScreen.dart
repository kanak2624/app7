import 'package:app7/src/screen/GalleryScreen.dart';
import 'package:app7/src/screen/MenuScreen.dart';
import 'package:app7/src/screen/ReviewScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class SingleShopScreen extends StatefulWidget {
  String? pname;
  String? image;
  String? location;
  List<Map<String, dynamic>>? menuitem;
  SingleShopScreen(
      {super.key, this.pname, this.image, this.location, this.menuitem});

  @override
  State<SingleShopScreen> createState() => _SingleShopScreenState();
}

class _SingleShopScreenState extends State<SingleShopScreen> {
  bool isVisible = true;

  call() {
    UrlLauncher.launch("tel://9784837939");
  }

  Whatsapp() async {
    var whatsapp = "+919784837939";
    var whatsappAndroid =
        Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await UrlLauncher.canLaunchUrl(whatsappAndroid)) {
      await UrlLauncher.launchUrl(whatsappAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }

  MenuItem(menuitem) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MenuScreen(menuitem: menuitem),
      ),
    );
  }

  Gallery() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => GalleryScreen(),
      ),
    );
  }

  Reviews() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ReviewScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.menuitem);

    var menuitem1 = (widget.menuitem);

    print("**************");
    print(menuitem1);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.pname}"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: w,
            height: h * .01,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: w,
            height: h * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("${widget.image}"),
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(255, 72, 72, 72), BlendMode.darken),
                    fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: w * .8,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 254, 254, 254),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1)),
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                      ),
                                      Text("3.7")
                                    ]),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 254, 254, 254),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1)),
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(5),
                                child: Row(children: const [
                                  Icon(
                                    Icons.location_pin,
                                    size: 20,
                                  ),
                                  Text("10km")
                                ]),
                              )
                            ]),
                      ),
                      Container(
                        width: w * .8,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "${widget.pname}",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 254, 254, 254),
                                    fontSize: 24),
                              ),
                            ]),
                      ),
                      Container(
                        width: w * .9,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: w * .5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "${widget.location}",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 247, 247, 247)),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 254, 254, 254),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(width: 1)),
                                              margin: EdgeInsets.only(top: 10),
                                              padding: EdgeInsets.all(5),
                                              child: Text("Wi-Fi"),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 254, 254, 254),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(width: 1)),
                                              margin: EdgeInsets.only(top: 10),
                                              padding: EdgeInsets.all(5),
                                              child: Text("PARKING"),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 254, 254, 254),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(width: 1)),
                                              margin: EdgeInsets.only(top: 10),
                                              padding: EdgeInsets.all(5),
                                              child: Text("BAR"),
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255)),
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Icon(
                                  Icons.favorite,
                                  size: 25,
                                  color: Colors.amber,
                                ),
                              ),
                            ]),
                      )
                    ],
                  ))
            ]),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "It offers dishes like Chinese, South Indian, Fast Food, Coffee Shop and Non Veg, and some others mouth watering dishes that make you feel delighted. Besides.",
              style: TextStyle(),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.date_range_outlined,
                            size: 25,
                            color: Colors.amber,
                          ),
                        ),
                        Container(
                          child: Column(children: [
                            Container(
                              child: Text("07:00 - 22:00"),
                            ),
                            Container(
                              child: Text("Mondat to Sunday"),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                            onPressed: Whatsapp,
                            child: Icon(
                              Icons.wifi_calling_3,
                              size: 25,
                              color: Color.fromARGB(255, 3, 151, 12),
                            ),
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 3, 151, 12)),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                            onPressed: call,
                            child: Icon(
                              Icons.call,
                              size: 25,
                              color: Color.fromARGB(255, 3, 151, 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Menu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () => MenuItem(menuitem1),
                      child: Icon(Icons.arrow_circle_right),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Reviews",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: Reviews,
                      child: Icon(Icons.arrow_circle_right),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Gallery",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: Gallery,
                      child: Icon(Icons.arrow_circle_right),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
