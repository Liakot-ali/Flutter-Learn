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
  List<String> customers = ['Liakot', 'Jannat', 'Sonu', 'Umar'];
  List<String> address = ["Bangladesh", "Rangpur", "Nepal", "Nizeria"];
  var clicked = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(5),
        child: TextButton(
          onPressed: () {
            setState(() {
              customers.add("Shimu");
              clicked++;
            });
          },
          child: Text("Add"),
        ),
      ),
      Expanded(child: Customers(customers, clicked),),
    ]);
  }
}
