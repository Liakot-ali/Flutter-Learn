import 'package:easy_transaction/customers.dart';
import 'package:easy_transaction/shop_profile.dart';
import 'package:flutter/material.dart';
import 'customer_adder.dart';
import 'app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[350],
            title: Container(
              child: appBar("Liakot Fashion", "Remain: 0", "nothing"),
            ),
            bottom: TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Customers",
                  icon: Icon(Icons.arrow_downward, color: Colors.green,),
                ),
                Tab(
                  text: "Payble",
                  icon: Icon(Icons.arrow_upward, color: Colors.red,),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Expanded(
                child: CustomerAdder(),
              ),
              Expanded(
                child: CustomerAdder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
