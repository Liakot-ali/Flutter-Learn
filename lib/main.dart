import 'package:flutter/material.dart';
import 'customer_added.dart';
import 'app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[350],
              title: Container(
                child: appBar(),
              ),
            ),
            body: Container(
              child: CustomerAdder(),
            )));
  }
}
