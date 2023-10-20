import 'package:flutter/material.dart';

class saved_screen extends StatelessWidget {
  const saved_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("No items found")),
            ),
          )
        ],
      ),
    );
  }
}
