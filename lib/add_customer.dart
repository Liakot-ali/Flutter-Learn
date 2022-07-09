import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addCustomer extends StatelessWidget {
  Widget _Input(String hint, String label) {
    return TextFormField(
      maxLength: 50,
      cursorHeight: 17.0,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        contentPadding: EdgeInsets.all(5),
        helperText: "",
        labelStyle: TextStyle(
          fontSize: 15.0,
          decorationStyle: TextDecorationStyle.dotted,
        ),
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
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: 10.0,
              ),
              _Input("Name", "Name"),
              _Input("Phone", "Phone"),
              _Input("Type", "Type"),
              _Input("Address", "Address"),
              TextButton(
                onPressed: () {
                  String str = "Liakot's Wife/Bangladesh/0";
                  Navigator.pop(context, str);

                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   new SnackBar(
                  //     content: Text("Under Construction"),
                  //     behavior: SnackBarBehavior.floating,
                  //     margin: EdgeInsets.only(bottom: 10.0),
                  //   ),
                  // );
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
