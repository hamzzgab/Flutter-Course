import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function _changeIndex;

  TextControl(this._changeIndex);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text('Change text'), onPressed: _changeIndex);
  }
}
