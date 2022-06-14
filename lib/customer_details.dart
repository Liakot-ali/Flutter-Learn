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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Customer Name:", style: TextStyle(fontSize: 10.0),),
            Text(value.name, style: TextStyle(fontSize: 17.0),),
            SizedBox(height: 5.0,),
            Text("Customer Address:", style: TextStyle(fontSize: 10.0),),
            Text(value.address, style: TextStyle(fontSize: 17.0),),
            SizedBox(height: 5.0,),
            

          ],
        ),
      ),
    );
  }
}
