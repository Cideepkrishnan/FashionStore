import 'package:fashionstore/model/models.dart';
import 'package:fashionstore/provider/my_provider.dart';

import 'package:fashionstore/view/add_to_cart/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class details_screen extends StatefulWidget {
  final int itemIndex;

  const details_screen({super.key, required this.itemIndex});

  @override
  State<details_screen> createState() => _details_screenState();
}

class _details_screenState extends State<details_screen> {
  @override
  void didChangeDependencies() {
    Provider.of<my_provider>(context).isCart(widget.itemIndex);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<my_provider>(context, listen: false);
    // int itemprice = shirts[widget.itemIndex]["price"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(
                        // itemIndex: widget.itemIndex,
                        ),
                  ));
            },
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Tottal: ${Provider.of<my_provider>(context, listen: false).priceCal(
                  // itemprice, provider.itemCount
                  2000)}₹",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                provider.addToCart(widget.itemIndex);
                const snackBar = SnackBar(
                  content: Text("added sussces"),
                  backgroundColor: Colors.black,
                );
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                provider.resetItemCount();
              },
              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Add to cart",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(shirts[widget.itemIndex]["image"]),
                fit: BoxFit.cover,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200, top: 10),
              child: Text(
                shirts[widget.itemIndex]["name"],
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  "4.5/5",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                Text("(45 reviews)"),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "Papermaking Everyone knows that paper is made from trees. But when one looks at trees, one cannot imagine that something so soft and fragile as the paper is made is so hard and strong"),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 270),
              child: Text(
                "Choose size",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 186, 182, 182),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 186, 182, 182),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 186, 182, 182),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 135, 133, 133),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Price",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "2000 ₹",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              Provider.of<my_provider>(context, listen: false)
                                  .remove();
                            },
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(5, 5),
                              side: BorderSide(
                                width: 2.0,
                                color: Colors.black,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 15,
                            )),
                        Container(
                          width: 10,
                          child: Center(
                            child: Text(
                              Provider.of<my_provider>(context)
                                  .value
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Provider.of<my_provider>(context, listen: false)
                                  .add();
                            },
                            style: OutlinedButton.styleFrom(
                                minimumSize: Size(5, 5),
                                side: BorderSide(
                                    width: 2.0,
                                    color: Colors.black,
                                    style: BorderStyle.solid)),
                            child: Icon(
                              Icons.add,
                              size: 15,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
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
