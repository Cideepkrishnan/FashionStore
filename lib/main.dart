import 'package:fashionstore/provider/my_provider.dart';
import 'package:fashionstore/view/Bottom_bar/bottom_bar.dart';
import 'package:fashionstore/view/Splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(store());
}

class store extends StatelessWidget {
  // final int itemIndex;
  const store({
    super.key,
    // required this.itemIndex
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => my_provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashscreen(),
      ),
    );
  }
}
