import 'package:easy_transaction/add_customer.dart';
import 'package:easy_transaction/widgets/search_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customer_adder.dart';
import 'app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
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
  List<String> phone = ["", "", "", "", "", ""];
  var clicked = 7;

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
          actions: [
            searchIcon(),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "Customers",
                icon: Icon(
                  Icons.arrow_downward,
                  color: Colors.green[200],
                ),
              ),
              Tab(
                text: "Payble",
                icon: Icon(
                  Icons.arrow_upward,
                  color: Colors.red[400],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CustomerAdder(customers, address, phone, picture, remain),
            CustomerAdder(customers, address, phone, picture, remain),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
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
          child: Text("Add"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
