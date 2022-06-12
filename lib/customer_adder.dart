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
  List<String> picture = ["assets/shimu1.jepg","assets/shimu2.jepg","assets/shimu3.jepg","assets/shimu4.jepg","assets/shimu5.jepg","assets/shimu6.jepg"];
  var clicked = 7;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(5),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              customers.add("Shimu" + clicked.toString());
              address.add("Bangladesh");
              picture.add("assets/shimu" + clicked.toString() +".jpeg");
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
        child: Customers(customers, address, clicked, picture),
      ),
    ]);
  }
}
