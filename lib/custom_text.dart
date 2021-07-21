import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String _text;

  CustomText(this._text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(_text, style: TextStyle(
          fontSize: 18,
          color: Colors.orange,
        ),
          textAlign: TextAlign.center,),
      ),
    );
  }
}
