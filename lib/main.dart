import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> customers = ['Liakot', 'Jannat', 'Sonu', 'Umar'];
  List<String> address = ["Bangladesh", "Rangpur", "Nepal", "Nizeria"];
  var clicked = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[350],
            title: Row(
              children: [
                GestureDetector(
                  onDoubleTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      new SnackBar(
                        content: Text("Image clicked"),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/shimu.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Liakot Fashion',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Remain: 0",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                //------------for set align------------
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
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
              Text("You have clicked " + clicked.toString() + " times"),
              Column(
                children: customers
                    .map((elemnt) => ListTile(
                          title: Text(elemnt),
                          subtitle: Text("This is subtitle"),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}
