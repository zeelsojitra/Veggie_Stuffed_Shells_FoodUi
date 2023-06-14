import 'package:flutter/material.dart';

import 'detiils.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int select = -1;
  int col = -1;
  int bag = -1;

  List<Map<String, dynamic>> images = [
    {
      "Image": "asserts/images/soup.png",
      "name": "Soup",
    },
    {
      "Image": "asserts/images/vegetable_1.png",
      "name": "Vege",
    },
    {
      "Image": "asserts/images/chicken.png",
      "name": "Chicken",
    },
    {
      "Image": "asserts/images/drink_glass.png",
      "name": "Drink",
    },
  ];
  List<Map<String, dynamic>> con = [
    {
      "image": "asserts/images/veggie stuffed shells.png",
      "name": "Veggie Stuffed Shells",
      "price": "\$12",
    },
    {
      "image": "asserts/images/veggie stuffes shells_2.png",
      "name": "Veggie Salades Shells",
      "price": "\$15",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Hi, Mina!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage:
                      AssetImage('asserts/images/profile_jpg.jpeg'),
                  maxRadius: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.red,
                  size: 30,
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  size: 25,
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: InputBorder.none,
                hintText: "Search foods...",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 15, left: 20, top: 20),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: select == index
                              ? Colors.white
                              : Colors.grey.shade200,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 3,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset(
                            images[index]['Image'],
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      images[index]['name'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: select == index ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => detils(),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10, left: 20),
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      color: index == 0 ? Color(0xfffef2dc) : Color(0xffffe4e9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            con[index]['image'],
                            height: 250,
                            width: 250,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          con[index]['name'],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: index == 0
                                ? Color(0xffeca03c)
                                : Color(0xffd34461),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          con[index]['price'],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
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
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  bool like = true;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: IconButton(
        onPressed: () {
          setState(() {
            like = !like;
          });
        },
        icon: like
            ? Icon(
                Icons.favorite_border,
                color: Colors.red,
              )
            : Icon(
                Icons.favorite,
                color: Colors.red,
              ),
      ),
    );
  }
}
