import 'dart:math';

import 'package:flutter/material.dart';

class TextController extends StatelessWidget {
  final Function _textChangeHandler;

  TextController(this._textChangeHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text(
            'Change Text',
            style: TextStyle(fontSize: 18, color: Colors.deepOrange),
          ),
          onPressed: () => _textChangeHandler(value),
        ),
      ),
    );
  }


  String get value {
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    var randInt = 0;
    while (true) {
      randInt = Random().nextInt(30);
      if (randInt != 0) break;
    }

    var tempString = _chars.substring(0, randInt);
    return tempString;
  }
}
