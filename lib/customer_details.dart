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

  Widget _TextFormField(String label, String text) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        label: Text(label),
        contentPadding: EdgeInsets.all(5),
      ),
      initialValue: text,
      maxLength: 10,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.0,
          ),
          _TextFormField("Name", value.name),
          SizedBox(
            height: 5.0,
          ),
          _TextFormField("Address", value.address),
          SizedBox(
            height: 5.0,
          ),
          _TextFormField("Phone", value.phone),
          TextButton(
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
        ],
      ),
    );
  }
}
