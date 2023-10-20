import 'package:fashionstore/model/models.dart';

import 'package:fashionstore/view/Detail_screen/details_screen.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    final List<String> mylist = [
      "  All  ",
      " Men ",
      " Women ",
      " kids ",
      " Trends ",
      "Travel",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Discover",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          )
        ],
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 162, 162, 159),
                          borderRadius: BorderRadius.circular(20)),
                      height: 40,
                      width: 300,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.search),
                          SizedBox(
                            width: 30,
                          ),
                          Text("search anything")
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mylist.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 65, 65, 64),
                              ),
                              child: Center(
                                child: Text(
                                  mylist[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: shirts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 330),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => details_screen(
                            itemIndex: index,
                          ),
                        ));
                  },
                  child: Container(
                    height: 400,
                    width: 100,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 250,
                                width: double.infinity,
                                child: Image.network(
                                  shirts[index]["image"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 140, top: 5),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  color: const Color.fromARGB(0, 125, 124, 124),
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Text(
                              shirts[index]["name"],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Text(
                              shirts[index]["price".toString()],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
