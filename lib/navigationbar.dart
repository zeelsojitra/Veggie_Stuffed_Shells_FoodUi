import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:veggie_stuffed_shells/shopping_cart.dart';

import 'detiils.dart';
import 'home.dart';

class navigation extends StatefulWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int _selectedIndex = 0;
  List screen = [
    home(),
    detils(),
    shopping_cart(),
    SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              inactiveColor: Colors.grey,
              activeColor: Colors.orange,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                title: Text('Shopping'),
                inactiveColor: Colors.grey,
                activeColor: Colors.orange),
            BottomNavyBarItem(
                icon: Icon(Icons.notification_add),
                title: Text('Notification'),
                inactiveColor: Colors.grey,
                activeColor: Colors.orange),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text('Person'),
                inactiveColor: Colors.grey,
                activeColor: Colors.orange),
          ],
        ));
  }
}
