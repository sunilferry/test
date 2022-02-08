
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_testing/views/curved_navigation_bar.dart';
import 'package:package_testing/views/nav_custom_painter.dart';
void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CurvedNavigationBar(
            backgroundColor: Colors.blueAccent,
            index: 1,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
            ],
            onTap: (index) {
              //Handle button tap
            },
          ),



        ],
      )

    );
  }
}
