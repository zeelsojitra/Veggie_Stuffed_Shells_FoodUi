import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veggie_stuffed_shells/home.dart';
import 'package:veggie_stuffed_shells/shopping_cart.dart';

class detils extends StatefulWidget {
  const detils({Key? key}) : super(key: key);

  @override
  State<detils> createState() => _detilsState();
}

class _detilsState extends State<detils> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffeed4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 800,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xfffef2dc),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 50),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back_ios)),
                              Spacer(),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: like(),
                              )
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 300,
                              width: double.infinity,
                              child: PageView(
                                onPageChanged: (value) {
                                  setState(() {
                                    selected = value;
                                  });
                                },
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'asserts/images/veggie stuffes shells_2.png',
                                      height: 220,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Center(
                                    child: Image.asset(
                                      'asserts/images/veggie stuffed shells.png',
                                      height: 220,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Center(
                                    child: Image.asset(
                                      'asserts/images/veggie stuffes shells_2.png',
                                      height: 220,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                left: 0,
                                right: 0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    3,
                                    (index) => CircleAvatar(
                                      radius: 5,
                                      backgroundColor: selected == index
                                          ? Colors.red
                                          : Color(0xfffddd94),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Veggie Stuffed Shells',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Create a lighter, healthier version of stuffed shells, \n the standard whole milk ricotta  cheese filling is replaced with frozen leaf  spinach and lowfat \ncottage cheese or partskim  ricotta, which cuts \ndown the fat without sacrificing creaminess.',
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '\$12',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => shopping_cart(),
                          ));
                    },
                    child: Container(
                      height: 55,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xffff9e1c),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
