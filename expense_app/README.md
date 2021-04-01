# expense_app

# Combining Widgets ⚔️

`main.dart`
Can do it both ways because it takes the width of the parent

Wrap stuff in a container to change with width 
```
Card(
  color: Colors.blue,
  child: Container(
    width: double.infinity,
    child: Text('CHART!'),
    ),
   elevation: 5,
   ),
```

```
Container(
  width: double.infinity,
  child: Card(
    color: Colors.blue,
    child: Text('List of Tx!'),
    ),
),
```

# Understanding Column Alignment 👽

- Column
  - `mainAxisAlignment:` goes from **top to bottom**
  - `crossAxisAlignment:` goes from **left to right**
- Row
  - `mainAxisAlignment:` goes from **left to right**
  - `crossAxisAlignment:` goes from **top to bottom**

**for Columns mainly**
- `mainAxisAlignment:` elements:
  - `MainAxisAlignment.`
    1. start
    2. center
    3. end
    4. spaceBetween 
    5. spaceAround 
    6. spaceEvenly
- `crossAxisAlignment:` elements:
  - `CrossAxisAlignment.`
    1. start
    2. center
    3. end
    4. stretch

# Adding a Transaction Model 🕺
`transaction.dart`
```
import 'package:flutter/foundation.dart';

class Transaction {  
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
```
- Importing the package for using the required function
- `final`
  - Runtime constants
- `DateTime`
  - Built into dart, it is a complex object


`main.dart`
`import './transaction.dart';`
```
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Gross-eries',
      amount: 14.53,
      date: DateTime.now(),
    ),
  ];
```
- Creating a `List<Transaction>` _List of transactions_ from the transaction class
