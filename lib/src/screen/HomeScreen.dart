import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project"),
        leading: const Icon(
          Icons.menu,
          size: 40,
          color: Colors.amber,
        ),
        actions: const [Icon(Icons.card_travel), Icon(Icons.notifications)],
      ),
      backgroundColor: const Color.fromARGB(255, 244, 224, 3),
      body: Column(
        children: [
          Container(
            height: height * .88,
            width: width,
            color: Color.fromARGB(255, 250, 249, 249),
            child: Column(children: [
              Container(
                height: 300,
                width: width,
                color: Color.fromARGB(255, 7, 255, 110),
                child: Row(children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Color.fromARGB(255, 197, 255, 7),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Color.fromARGB(255, 90, 7, 255),
                      )
                    ],
                  )
                ]),
              ),
              /*   Container(
                height: 200,
                width: width,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 11, 7, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                ),
              ), */
              /*  Container(
                height: 200,
                width: width,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 11, 7, 255),
                  borderRadius: BorderRadius.circular(50),
                ),
              ), */
            ]),
          ),
        ],
      ),
    );
  }
}
