import 'package:flutter/material.dart';
import 'main.dart';

class appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onDoubleTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              new SnackBar(
                content: Text("Image clicked"),
              ),
            );
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
              'Liakot Fashion',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              "Remain: 0",
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
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}