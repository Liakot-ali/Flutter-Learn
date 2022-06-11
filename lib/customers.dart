import 'package:easy_transaction/customer_details.dart';
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CustomerDetails(
                      value: Value(customers[index], address[index], "Nothing"),
                    ),
                  ),
                );
              },
            );
          },
        ),
      )
    ]);
  }
}

class Value {
  final String name, address, picture;

  Value(this.name, this.address, this.picture);
}
