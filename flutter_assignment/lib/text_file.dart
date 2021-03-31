import 'package:flutter/material.dart';

class TextFile extends StatelessWidget {
  final List _differentTexts;
  final int textIndex;

  TextFile(this._differentTexts, this.textIndex);

  @override
  Widget build(BuildContext context) {
    return Text(_differentTexts[textIndex]);
  }
}
