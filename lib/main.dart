import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
            ),
      ),
      home: HomeScreen(),
    );
  }
}
