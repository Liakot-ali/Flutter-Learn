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
          child: appBar("Liakot Fashion", "Remain: 0", "assets/shimu.jpeg"),
        ),
      ),
      
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              Image.asset("assets/liakot1.jpeg", height: 100.0, width: 100.0,),
              Text(
                "Shop Name",
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              ),
              Text(
                "Liakot Fashion",
                style: TextStyle(color: Colors.black, fontSize: 17.0),
              ),
            ],
          ),
      ),
    );
  }
}
