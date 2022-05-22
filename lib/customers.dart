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
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: customers.length,
            itemBuilder: (context, index) {
               return ListTile(
                    title: Text(customers[index]),
                    subtitle: Text("This is subtitle"),
                    onTap: (){
                      
                    },
                  );
            },), 
          )
      ]
    );
  }
}
