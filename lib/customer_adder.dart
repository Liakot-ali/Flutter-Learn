import 'package:flutter/material.dart';
import './customers.dart';

class CustomerAdder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomerAdderState();
  }
}

class _CustomerAdderState extends State<CustomerAdder> {
  List<String> customers = ['Liakot', 'Jannat', 'Sonu', 'Umar', 'Shuvo', 'Rajul'];
  List<String> address = ["Bangladesh", "Rangpur", "Nepal", "Nizeria", "Japan", 'bangladesh'];
  var clicked = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(5),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              customers.add("Shimu");
              address.add("Bangladesh");
              clicked++;
            });
          },
          child: Text(
            "Add",
            style: TextStyle(color: Colors.black),
            maxLines: 1,
          ),
        ),
      ),
      Expanded(
        child: Customers(customers, address, clicked),
      ),
    ]);
  }
}
