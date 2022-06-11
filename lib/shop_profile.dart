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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[350],
          title: Container(
            child: appBar("Liakot Fashion", "Remain: 0", "nothing"),
          ),
        ),
        body: Center(
          child: Text(
            "This is user profile.\nAdd user details here",
            style: TextStyle(color: Colors.black),
            maxLines: 1,
          ),
        ));
  }
}
