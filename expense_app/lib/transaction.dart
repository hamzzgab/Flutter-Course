import 'package:flutter/foundation.dart';

class Transaction {
  // runtime constants
  final String id;
  final String title;
  final double amount;
  // built into dart
  // a complex object
  final DateTime date;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
