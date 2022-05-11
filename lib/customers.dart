import 'package:flutter/material.dart';

class Customers extends StatelessWidget {
  final List<String> customers;
  var clicked;

  Customers(this.customers, this.clicked);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("You have clicked " + clicked.toString() + " times"),
        Column(
          children: customers
              .map((elemnt) => ListTile(
                    title: Text(elemnt),
                    subtitle: Text("This is subtitle"),
                  ))
              .toList(),
        )
      ],
    );
  }
}
