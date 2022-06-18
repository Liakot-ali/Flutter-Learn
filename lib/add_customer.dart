import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Customer"),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: "Customer Name",
            maxLength: 25,
            cursorHeight: 17.0,
          ),
          TextFormField(
            initialValue: "Customer Type",
            maxLength: 20,
            cursorHeight: 17.0,
          ),
          TextFormField(
            initialValue: "Customer Phone",
            maxLength: 11,
            cursorHeight: 17.0,
          ),
          TextFormField(
            initialValue: "Customer Address",
            maxLength: 50,
            cursorHeight: 17.0,
          ),
        ],
      ),
    );
  }
}
