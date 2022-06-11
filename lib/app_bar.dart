import 'package:easy_transaction/shop_profile.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class appBar extends StatelessWidget {
  final name, address, picture;
  appBar(this.name, this.address, this.picture);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ShopProfile()));
          },
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/shimu.jpeg'),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              address,
              style: TextStyle(
                color: Colors.green,
                fontSize: 15,
              ),
            ),
          ],
        ),
        //------------for set align------------
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("Search icon clicked")));
                },
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
