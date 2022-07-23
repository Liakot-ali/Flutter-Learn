import 'package:easy_transaction/app_bar.dart';
import 'package:flutter/material.dart';

class ShopProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopProfileState();
  }
}

class _ShopProfileState extends State<ShopProfile> {
  Widget _Text(String text, double size) {
    Color color;
    if (size == 17.0) {
      color = Colors.black;
    } else {
      color = Colors.grey;
    }
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: appBar("Liakot Fashion", "Tajnagor, Parbatipur, Dinajpur",
              "assets/shimu.jpeg", "Total Remain: 1502"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                new SnackBar(
                  content: new Text("Search icon clicked"),
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(bottom: 10.0),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.0),
            Image.asset(
              "assets/liakot1.jpeg",
              height: 100.0,
              width: 100.0,
            ),
            _Text("Shop Name", 10.0),
            _Text("Liakot Fashion", 17.0),
            _Text("Owner Name", 10.0),
            _Text("Liakot Ali Liton", 17.0),
            _Text("Category", 10.0),
            _Text("Ladies Fashion", 17.0),
            _Text("Address", 10.0),
            _Text("Parbatipur, Dinajpur", 17.0),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  new SnackBar(
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(bottom: 10.0),
                    content: Text("Under Construction"),
                  ),
                );
              },
              child: Text("Update Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
