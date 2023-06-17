import 'package:flutter/material.dart';

class ShopComponent extends StatefulWidget {
  String? image;
  String? pname;
  String? location;
  ShopComponent({super.key, this.image, this.pname, this.location});

  @override
  State<ShopComponent> createState() => _ShopComponentState();
}

class _ShopComponentState extends State<ShopComponent> {
  @override
  Widget build(BuildContext context) {
    print(widget.image);
    print(widget.pname);
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 235, 209, 142),
          borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: MediaQuery.of(context).size.width * .7,
          height: MediaQuery.of(context).size.height,
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 100,
              height: 130,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset("${widget.image}", fit: BoxFit.cover),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      height: 30,
                      child: Text(
                        "${widget.pname}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      child: Text(
                        "${widget.location}",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1)),
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(5),
                      child: Row(children: [
                        Icon(
                          Icons.star,
                          size: 20,
                        ),
                        Text("3.7")
                      ]),
                    )
                  ]),
            )
          ]),
        ),
        Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(Icons.favorite),
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  child: Row(children: [
                    Icon(
                      Icons.location_pin,
                      size: 20,
                    ),
                    Text("10Km")
                  ]),
                ),
                Container(),
              ]),
          width: MediaQuery.of(context).size.width * .23,
          color: Color.fromARGB(255, 239, 225, 190),
          height: MediaQuery.of(context).size.height,
        ),
      ]),
    );
  }
}
/*  */
