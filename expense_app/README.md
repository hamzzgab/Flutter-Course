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

# Mapping Data into Widgets 🗺️
`main.dart`
```
 Column(      
      children: transactions.map((tx) {
        return Card(
          child: Text(tx.title),
        );
      }).toList(),
    )
```
- To help us make a bunch of widgets we use map
- `map` takes a function that gets execcted

# Building Custom List item 🏗️
![image](https://user-images.githubusercontent.com/47095611/113293834-e9235280-9313-11eb-9455-5d80c022f911.png)

`main.dart`
```
return Card(
        child: Row(
          children: [
            Container(              
              child: Text(tx.amount.toString()),
            ),
            Column(
              children: [
                Text(tx.title),
                Text(tx.date.toString()),
              ],
            )
          ],
        ),
      );
```
- Normaly to arguments require a string to convert it use toString() - `tx.amount.toString()`

## Styling a Container 🖌️
`main.dart`
```
margin:
  EdgeInsets.symmetric(vertical: 10, horizontal: 15),  
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black, width: 2),
  ),
  padding: EdgeInsets.all(10),
```

- `decoration: BoxDecoration(border: Border.all()),` gives a normal border

## Styling Text ✏️
`main.dart`
```
child: Text(
        tx.amount.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.green,
        ),
      ),
```

In the `Column()`
`crossAxisAlignment: CrossAxisAlignment.start,`

## String Interpolation 🎣
`main.dart`

`tx.amount.toString()` can be written as `'\$${tx.amount}',`

- `$` is used to reference variables, it is a _reserved character_
- It gives the instace of that object
  - So we need to wrap it around `{}`
