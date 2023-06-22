import 'package:flutter/material.dart';

class AllShopScreen extends StatefulWidget {
  var shop;
  AllShopScreen({super.key, required this.shop});

  @override
  State<AllShopScreen> createState() => _AllShopScreenState();
}

class _AllShopScreenState extends State<AllShopScreen> {
  @override
  Widget build(BuildContext context) {
    var shopdata = widget.shop;
    var shoplist = shopdata[0]["shops"];
    print(shoplist);
    return Scaffold(
      appBar: AppBar(
          actions: [Icon(Icons.search), Icon(Icons.filter_list)],
          title: TextField(
            onChanged: (value) {
              setState(() {});
            },
          )),
      body: ListView.builder(
          itemCount: shoplist.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              child: Text("data"),
            );
          }),
    );
  }
}
