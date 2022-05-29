import 'package:flutter/material.dart';

class Customers extends StatelessWidget {
  final List<String> customers;
  final List<String> address;
  var clicked;
  int counter = 1;

  Customers(this.customers, this.address, this.clicked);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Text("You have clicked " + clicked.toString() + " times"),
      Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: customers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(customers[index]),
              subtitle: Text(address[index]),
              leading: Text(clicked.toString()),
              trailing: Text(counter.toString()),
              onTap: () {
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("This is list Item")));
              },
            );
          },
        ),
      )
    ]);
  }
}
