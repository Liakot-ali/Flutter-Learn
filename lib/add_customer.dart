import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addCustomer extends StatelessWidget {
  Widget _Input(String hint, String label) {
    return TextFormField(
      maxLength: 50,
      cursorHeight: 17.0,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        helperText: "",
        labelStyle: TextStyle(fontSize: 15.0),
        labelText: label,
        hintText: hint,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Customer"),
      ),
      body: Form(
        child: Column(
          children: [
            _Input("Name", "Customer Name"),
            _Input("Phone", "Customer Phone"),
            _Input("Type", "Customer Type"),
            _Input("Address", "Customer Address"),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  new SnackBar(
                    content: Text("Under Construction"),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(bottom: 10.0),
                  ),
                );
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
