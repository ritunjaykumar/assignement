import 'package:assignement/custom_text.dart';
import 'package:assignement/text_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _changeText = "click to change";

  void _changeTextCallback(final String tempText) {
    setState(() {
      this._changeText = tempText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              CustomText(_changeText),
              TextController(_changeTextCallback),
            ],
          ),
        ),
      ),
    );
  }
}
