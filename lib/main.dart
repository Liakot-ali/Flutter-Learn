import 'package:easy_transaction/customers.dart';
import 'package:easy_transaction/shop_profile.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.green,
        buttonColor: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.green),
            foregroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
        ),
      ),
      // routes: {
      //   '/customerAdder': (BuildContext context) => CustomerAdder(),
      // },
      home: HomePage(),
    );
  }
}
