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

  Widget _Text(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 15.0),
    );
  }

  Widget _TextFormField(String text) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        label: Text("Label"),
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
        backgroundColor: Colors.grey[350],
        title: Container(
          child: appBar(value.name, value.address, value.picture,
              "Remain: " + value.remain.toString()),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TextFormField(value.name),
          SizedBox(
            height: 5.0,
          ),
          _TextFormField(value.address),
          SizedBox(
            height: 5.0,
          ),
          _TextFormField("User Phone Number"),
        ],
      ),
    );
  }
}
