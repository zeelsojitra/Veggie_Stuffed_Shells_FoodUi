import 'package:flutter/material.dart';

class bottom_navigation_bar extends StatefulWidget {
  const bottom_navigation_bar({Key? key}) : super(key: key);

  @override
  State<bottom_navigation_bar> createState() => _bottom_navigation_barState();
}

class _bottom_navigation_barState extends State<bottom_navigation_bar> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select,
        onTap: (value) {
          setState(() {
            select = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
