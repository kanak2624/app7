import 'package:app7/src/components/ProductComponent.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum DrawerSection {
  dashboard,
  contacts,
}

class _HomeScreenState extends State<HomeScreen> {
  Widget Dashboard() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.amber,
      child: Text(
        "Dashboard",
        style: TextStyle(fontSize: 50, color: Colors.black),
      ),
    );
  }

  Widget Contacts() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(255, 28, 7, 255),
      child: Text(
        "Contacts",
        style: TextStyle(fontSize: 50, color: Colors.black),
      ),
    );
  }

  Widget Header() {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, 0, 18, 179),
      child: Text(
        "Header",
        style: TextStyle(fontSize: 30, color: Colors.amber),
      ),
    );
  }

  Widget ListData() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(children: [
        menuItem(1, "DashBoard", Icons.dashboard_outlined,
            currentPage == DrawerSection.dashboard ? true : false),
        menuItem(2, "contacts", Icons.people_alt_outlined,
            currentPage == DrawerSection.contacts ? true : false),
      ]),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSection.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSection.contacts;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  var currentPage = DrawerSection.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSection.dashboard) {
      container = Dashboard();
    } else if (currentPage == DrawerSection.contacts) {
      container = Contacts();
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Home Screen")),
        drawer: Drawer(
            child: SingleChildScrollView(
          child: Column(children: [Header(), ListData()]),
        )),
        body: container,
      ),
    );
  }
}



/* class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  showdata(String name) {
    print("login user===$name");
  }

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
      body: Column(
        children: [
          /*   Container(
            height: height * .88,
            width: width,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 300,
                  width: width,
                  color: Color.fromARGB(255, 86, 0, 247),
                ),
                Container(
                  height: 400,
                  width: width,
                  child: ProductComponent(),
                ),
                Container(
                  height: 400,
                  width: width,
                  child: ProductComponent(),
                ),
                Container(
                  height: 300,
                  width: width,
                  color: Color.fromARGB(255, 86, 0, 247),
                ),
              ]),
            ),
          ), */
          /* 
          Container(
            height: 300,
            width: width,
            color: Color.fromARGB(255, 247, 0, 0),
          ),
          Container(
            height: 300,
            width: width,
            color: Color.fromARGB(255, 78, 247, 0),
          ),
          Container(
            height: 300,
            width: width,
            color: Color.fromARGB(255, 86, 0, 247),
          ), */
          /* Container(
            height: height * .88,
            width: width,
            color: Color.fromARGB(255, 0, 0, 0),
            child: Column(children: [
              Container(
                height: 300,
                width: width,
                color: Color.fromARGB(255, 255, 189, 7),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 200,
                            color: Color.fromARGB(255, 197, 255, 7),
                            child: Row(children: [
                              TextButton(
                                  onPressed: () => {showdata("user1")},
                                  child: Text("Login")),
                              Icon(Icons.home)
                            ]),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 90, 7, 255),
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              "assets/images/img2.jpeg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      )
                    ]),
              ),
              Container(
                width: width,
                color: Color.fromARGB(255, 7, 255, 110),
                child: Row(children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Color.fromARGB(255, 255, 7, 226),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Color.fromARGB(255, 255, 7, 23),
                      )
                    ],
                  )
                ]),
              ), */
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
        ],
      ),
    );
  }
}
 */