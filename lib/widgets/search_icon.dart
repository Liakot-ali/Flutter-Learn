import 'package:flutter/material.dart';

class searchIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          new SnackBar(
            content: new Text("Search icon clicked"),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(bottom: 10.0),
          ),
        );
      },
      icon: Icon(Icons.search),
    );
  }
}
