import 'package:easy_transaction/customer_details.dart';
import 'package:flutter/material.dart';

class Customers extends StatelessWidget {
  final List<String> customers;
  final List<String> address;
  final List<String> picture;
  var clicked;
  int counter = 1;

  Customers(this.customers, this.address, this.clicked, this.picture);

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
              trailing: Text(clicked.toString()),
              leading: CircleAvatar(
                backgroundImage: AssetImage(picture[index]),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return CustomerDetails(
                      value: Value(
                          customers[index], address[index], picture[index]),
                    );
                  }),
                );
              },
              onLongPress: () {
                Scaffold.of(context).showSnackBar(new SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text("Under Construction"),
                  margin: EdgeInsets.only(bottom: 10.0),
                ));
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
