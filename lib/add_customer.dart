import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Customer"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              maxLength: 25,
              cursorHeight: 17.0,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                helperText: "",
                labelStyle: TextStyle(fontSize: 15.0),
                labelText: "Name",
                hintText: "Customer Name",
              ),
            ),
            TextFormField(
              maxLength: 20,
              cursorHeight: 17.0,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                helperText: "",
                labelStyle: TextStyle(fontSize: 15.0),
                labelText: "Type",
                hintText: "Customer Type",
              ),
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
      ),
    );
  }
}
