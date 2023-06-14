import 'package:flutter/material.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';

class shopping_cart extends StatefulWidget {
  const shopping_cart({Key? key}) : super(key: key);

  @override
  State<shopping_cart> createState() => _shopping_cartState();
}

class _shopping_cartState extends State<shopping_cart> {
  List<Map<String, dynamic>> shopping = [
    {
      "Image": "asserts/images/vegetable bowle.png",
      "Name": "Vegetable",
      "price": "\$12",
    },
    {
      "Image": "asserts/images/soup.png",
      "Name": "Soup",
      "price": "\$10",
    },
    {
      "Image": "asserts/images/drink_glass.png",
      "Name": "Drinks",
      "price": "\$12",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffeed4),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 820,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 25,
                              )),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.black,
                                size: 30,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Shopping Cart',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Total ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '\$34',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffeacc),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                          child: Image.asset(
                                        shopping[index]['Image'],
                                        width: 70,
                                        height: 70,
                                      )),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          shopping[index]["Name"],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          shopping[index]["price"],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            inkricee(),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.delete,
                                                  color: Colors.grey,
                                                  size: 18,
                                                ))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: RDottedLineBorder.all(
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "APPLY COUPON",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Tax",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                "\$34",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "\$00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                width: 190,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class inkricee extends StatefulWidget {
  const inkricee({Key? key}) : super(key: key);

  @override
  State<inkricee> createState() => _inkriceeState();
}

class _inkriceeState extends State<inkricee> {
  int inkrice = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                if (inkrice > 0) {
                  inkrice--;
                }
              });
            },
            icon: Icon(Icons.remove)),
        Text('$inkrice'),
        IconButton(
            onPressed: () {
              setState(() {
                inkrice++;
              });
            },
            icon: Icon(Icons.add)),
      ],
    );
  }
}
