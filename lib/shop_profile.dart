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
        backgroundColor: Colors.grey[350],
        title: Container(
          child: appBar("Liakot Fashion", "Tajnagor, Parbatipur, Dinajpur",
              "assets/shimu.jpeg", "Total Remain: 1502"),
        ),
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
            // Text(
            //   "Liakot Fashion",
            //   style: TextStyle(color: Colors.black, fontSize: 17.0),
            // ),
            // Text(
            //   "Owner Name",
            //   style: TextStyle(color: Colors.grey, fontSize: 10.0),
            // ),
            // Text(
            //   "Liakot Ali Liton",
            //   style: TextStyle(color: Colors.black, fontSize: 17.0),
            // ),
            // Text(
            //   "Category",
            //   style: TextStyle(color: Colors.grey, fontSize: 10.0),
            // ),
            // Text(
            //   "Ladies Fashion",
            //   style: TextStyle(color: Colors.black, fontSize: 17.0),
            // ),
            // Text(
            //   "Address",
            //   style: TextStyle(color: Colors.grey, fontSize: 10.0),
            // ),
            // Text(
            //   "Tajnagor, Parbatipur, Dinajpur",
            //   style: TextStyle(color: Colors.black, fontSize: 17.0),
            // ),
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
