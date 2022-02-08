
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: CurvedNavigationBar(
              onTap: (index) {

              },
            ),
          ),



        ],
      )

    );
  }
}
