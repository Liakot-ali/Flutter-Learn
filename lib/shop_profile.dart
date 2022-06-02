import 'package:easy_transaction/app_bar.dart';
import 'package:flutter/material.dart';

class ShopProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopProfileState();
  }
}

class _ShopProfileState extends State<ShopProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Container(
            child: appBar(),
          ),
        ),
        body: Column(
          children: [
            Text("data"),
          ],
        ),
      ),
    );
  }
}
