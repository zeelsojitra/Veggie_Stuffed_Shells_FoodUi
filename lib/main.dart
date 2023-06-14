import 'package:flutter/material.dart';
import 'package:veggie_stuffed_shells/home.dart';
import 'package:veggie_stuffed_shells/shopping_cart.dart';

import 'bottom_navifation_bar.dart';
import 'detiils.dart';
import 'navigationbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
