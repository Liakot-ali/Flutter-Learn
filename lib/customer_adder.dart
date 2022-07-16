import 'package:easy_transaction/add_customer.dart';
import 'package:flutter/material.dart';
import './customers.dart';

class CustomerAdder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomerAdderState();
  }
}

class _CustomerAdderState extends State<CustomerAdder> {
  List<String> customers = [
    'Liakot',
    'Jannat',
    'Sonu',
    'Umar',
    'Shuvo',
    'Rajul'
  ];
  List<String> address = [
    "Bangladesh",
    "Rangpur",
    "Nepal",
    "Nizeria",
    "Japan",
    'bangladesh'
  ];
  List<int> remain = [10, 50, 100, 15, 525, 220];
  List<String> picture = [
    "assets/shimu1.jpeg",
    "assets/shimu2.jpeg",
    "assets/shimu3.jpeg",
    "assets/shimu4.jpeg",
    "assets/shimu5.jpeg",
    "assets/shimu6.jpeg"
  ];
  List<String> phone = ["", "", "", "","", ""];
  var clicked = 7;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(5),
        child: FloatingActionButton(
          onPressed: () {
            clicked++;
            Navigator.push<String>(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => addCustomer(),
              ),
            ).then((value) {
              setState(() {
                if (value != null) {
                  List<String> str = value.split("/");
                  print("0" + str[0]);
                  print("1" + str[1]);
                  print("2" + str[2]);
                  print("3" + str[3]);
                  customers.add(str[0]);
                  phone.add(str[1]);
                  address.add(str[2]);
                  remain.add(int.parse(str[3]));
                  picture.add("assets/shimu" + clicked.toString() + ".jpeg");
                }
              });
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
        child: Customers(customers, address, remain, picture, phone),
      ),
    ]);
  }
}
