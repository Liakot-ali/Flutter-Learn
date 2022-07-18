import 'package:easy_transaction/add_customer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customer_adder.dart';
import 'app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            child: appBar("Liakot Fashion", "Tajnagor, Parbatipur, Dinajpur",
                "assets/shimu.jpeg", "Total Remain: 1502"),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                text: "Customers",
                icon: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
              ),
              Tab(
                text: "Payble",
                icon: Icon(
                  Icons.arrow_upward,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CustomerAdder(),
            CustomerAdder(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // clicked++;
            Navigator.push<String>(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => addCustomer(),
              ),
            );
            // ).then((value) {
            //   setState(() {
            //     if (value != null) {
            //       List<String> str = value.split("/");
            //       print("0" + str[0]);
            //       print("1" + str[1]);
            //       print("2" + str[2]);
            //       print("3" + str[3]);
            //       customers.add(str[0]);
            //       phone.add(str[1]);
            //       address.add(str[2]);
            //       remain.add(int.parse(str[3]));
            //       picture.add("assets/shimu" + clicked.toString() + ".jpeg");
            //     }
            //   });
            // });
          },
          child: Text(
            "Add",
            style: TextStyle(color: Colors.black),
            maxLines: 1,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
