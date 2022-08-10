import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addCustomer extends StatelessWidget {
  String name = "";
  String phone = "", type = "", address = "";
  final GlobalKey _formKey = GlobalKey<FormState>();

  Widget _phoneTextField() {
    return TextFormField(
      maxLength: 11,
      cursorHeight: 17.0,
      keyboardType: TextInputType.number,
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
        labelText: "Phone",
        hintText: "0123456789",
      ),
      autovalidate: true,
      onChanged: (String value) {
        if (value.isNotEmpty) {
          phone = value;
        }
      },
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      maxLength: 25,
      cursorHeight: 17.0,
      keyboardType: TextInputType.number,
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
        labelText: "Name",
        hintText: "Example",
      ),
      onChanged: (String value) {
        if (value.isNotEmpty) {
          phone = value;
        }
      },
    );
  }

  Widget _addressTextField() {
    return TextFormField(
      maxLength: 35,
      cursorHeight: 17.0,
      keyboardType: TextInputType.number,
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
        labelText: "Address",
        hintText: "11/A Green city, Dhaka-1120",
      ),
      onChanged: (String value) {
        if (value.isNotEmpty) {
          phone = value;
        }
      },
    );
  }

  Widget _typeTextField() {
    return TextFormField(
      maxLength: 10,
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
        labelText: "Type",
        hintText: "Customer",
      ),
      onChanged: (String value) {
        if (value.isNotEmpty) {
          type = value;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Customer"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                _nameTextField(),
                _phoneTextField(),
                _addressTextField(),
                _typeTextField(),
                TextButton(
                  onPressed: () {
                    String str = name + "/" + phone + "/" + address + "/0";
                    if (str == "///0") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        new SnackBar(
                          content: Text("No Input is given"),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.only(bottom: 10.0),
                        ),
                      );
                    } else {
                      Navigator.pop(context, str);
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
