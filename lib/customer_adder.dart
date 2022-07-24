import 'package:easy_transaction/add_customer.dart';
import 'package:flutter/material.dart';
import './customers.dart';

class CustomerAdder extends StatefulWidget {
  List<String> customers, phone, address, picture;
  List<int> remain;
  CustomerAdder(this.customers, this.address, this.phone, this.picture, this.remain);
  @override
  State<StatefulWidget> createState() {
    return _CustomerAdderState(customers, address, phone, picture, remain);
  }
}

class _CustomerAdderState extends State<CustomerAdder> {
  List<String> customers, phone, address, picture;
  List<int> remain;
  _CustomerAdderState(this.customers, this.address, this.phone, this.picture, this.remain);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Customers(customers, address, phone, picture, remain),
      ),
    ]);
  }
}
