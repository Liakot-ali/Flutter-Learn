import 'package:easy_transaction/app_bar.dart';
import 'package:flutter/material.dart';

class CustomerDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateCustomerDetails();
  }
}

class _StateCustomerDetails extends State<CustomerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Container(child: appBar(),),
      ),
    );
  }
}
