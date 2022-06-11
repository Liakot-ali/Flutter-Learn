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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Container(
          child: appBar(value.name, value.address, value.picture),
        ),
      ),
      body: Center(child: Text("Customer details body"),),
    );
  }
}
