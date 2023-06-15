/* import 'package:flutter/material.dart';

class ListComponent extends StatefulWidget {
  const ListComponent({super.key});

  @override
  State<ListComponent> createState() => _ListComponentState();
}

enum DrawerSection {
  dashboard,
  contacts,
}

class _ListComponentState extends State<ListComponent> {
  @override
  Widget build(BuildContext context) {
    var container;
    var currentPage = DrawerSection.dashboard;
    if (currentPage == DrawerSection.dashboard) {
      container = Dashboard();
    } else if (currentPage == DrawerSection.contacts) {
      container = Contacts();
    }
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 15,
          ),
          child: Column(children: [
            menuItem(1, "DashBoard", Icons.dashboard_outlined,
                currentPage == DrawerSection.dashboard ? true : false),
            menuItem(2, "contacts", Icons.people_alt_outlined,
                currentPage == DrawerSection.contacts ? true : false),
          ]),
        ),
      ),
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
}
 */