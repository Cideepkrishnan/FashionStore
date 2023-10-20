import 'package:fashionstore/view/add_to_cart/add_to_cart.dart';
import 'package:fashionstore/view/Home_screen/home_screen.dart';
import 'package:fashionstore/view/saved_screen/saved_screen.dart';
import 'package:flutter/material.dart';

class bottom_bar extends StatefulWidget {
  // final int itemIndex;
  const bottom_bar({
    super.key,
  });

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
      home_screen(),
      saved_screen(),
      Cart(
          // itemIndex: widget.itemIndex,
          )
    ];
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Saved"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
