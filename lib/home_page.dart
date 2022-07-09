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
          backgroundColor: Colors.grey[350],
          title: Container(
            child: appBar("Liakot Fashion", "Tajnagor, Parbatipur, Dinajpur",
                "assets/shimu.jpeg", "Total Remain: 1502"),
          ),
          bottom: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                text: "Customers",
                icon: Icon(
                  Icons.arrow_downward,
                  color: Colors.green,
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
      ),
    );
  }
}
