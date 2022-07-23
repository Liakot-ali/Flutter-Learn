import 'package:easy_transaction/shop_profile.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class appBar extends StatelessWidget {
  final name, address, picture, remain;
  appBar(this.name, this.address, this.picture, this.remain);

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
            backgroundImage: AssetImage(picture),
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
              remain,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
