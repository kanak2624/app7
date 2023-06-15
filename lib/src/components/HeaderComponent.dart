import 'package:flutter/material.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({super.key});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 136, 136, 136),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .3,
                child: Image.asset('assets/images/logo1.png'),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .3,
                color: Colors.amber,
                child: Text("Image"),
              ),
            ],
          )),
    ));
  }
/* 
  Widget Header() {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, 232, 232, 232),
      child: Text(
        "Header Component",
        style: TextStyle(fontSize: 30, color: Colors.amber),
      ),
    );
  } */
}
