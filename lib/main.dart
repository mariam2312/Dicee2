import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();

  @override
  State<StatefulWidget> createState() => TestState();
}

class TestState extends State<MyApp> {
  int numLeft = 1;
  int numRight = 1;
  void random() {
    setState(() {
      numLeft = Random().nextInt(6) + 1;
      numRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    random();
                  },
                  child: Image(
                      image: AssetImage(
                    'images/dice$numLeft.png',
                  )),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    random();
                  },
                  child: Image(
                      image: AssetImage(
                    'images/dice$numRight.png',
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
