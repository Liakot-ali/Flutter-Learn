import 'package:easy_transaction/customers.dart';
import 'package:flutter/material.dart';
import 'customer_added.dart';
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
                child: appBar(),
              ),
              bottom: TabBar(
                labelColor: Colors.green,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: "Customer",
                    icon: Icon(Icons.arrow_upward),
                  ),
                  Tab(
                    text: "Payble",
                    icon: Icon(Icons.arrow_downward),
                  )
                ],
              )),
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
