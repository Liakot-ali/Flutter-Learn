import 'package:easy_transaction/app_bar.dart';
import 'package:easy_transaction/customers.dart';
import 'package:flutter/material.dart';

class CustomerDetails extends StatefulWidget {
  final Value value;
  CustomerDetails({Key? key, required this.value}) : super(key: key);

  @override
  State<CustomerDetails> createState() {
    print(value.name);
    return _StateCustomerDetails(value);
  }
}

class _StateCustomerDetails extends State<CustomerDetails> {
  final Value value;
  _StateCustomerDetails(this.value);

  Widget _nameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        label: Text("Name"),
        contentPadding: EdgeInsets.all(5),
      ),
      initialValue: value.name,
      maxLength: 15,
      cursorHeight: 17.0,
    );
  }
  Widget _addressTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        label: Text("Address"),
        contentPadding: EdgeInsets.all(5),
      ),
      initialValue: value.address,
      maxLength: 25,
      cursorHeight: 17.0,
    );
  }
  Widget _phoneTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        label: Text("Phone"),
        contentPadding: EdgeInsets.all(5),
      ),
      initialValue: value.phone,
      maxLength: 11,
      cursorHeight: 17.0,
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: appBar(value.name, value.address, value.picture,
              "Remain: " + value.remain.toString()),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.0,
          ),
          _nameTextField(),
          SizedBox(
            height: 5.0,
          ),
          _addressTextField(),
          SizedBox(
            height: 5.0,
          ),
          _phoneTextField(),
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
            child: TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  new SnackBar(
                    content: Text("Under Construction"),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                );
              },
              child: Text("Update"),
            ),
          ),
        ],
      ),),
    );
  }
}
