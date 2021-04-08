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
![image](https://user-images.githubusercontent.com/47095611/113298439-7321ea00-9319-11eb-8f10-842c6beb7df6.png)

`main.dart`

`tx.amount.toString()` can be written as `'\$${tx.amount}',`

- `$` is used to reference variables, it is a _reserved character_
- It gives the instace of that object
  - So we need to wrap it around `{}`
  - `\$` is used to escape the dollar keyword

## Adding Text Input Widgets ➕
![image](https://user-images.githubusercontent.com/47095611/113345093-98c9e600-934f-11eb-9744-3a564f8df9b9.png)

`main.dart`
```
children: [
      TextField(
        decoration: InputDecoration(labelText: 'Title'),
      ),
      TextField(
        decoration: InputDecoration(labelText: 'Amount'),
      ),
      FlatButton(
        child: Text('Add Transaction'),
        textColor: Colors.purple,
        onPressed: () {},
      )
```
labelText is like a placeholder

# Fetching User Input 🤾
![image](https://user-images.githubusercontent.com/47095611/113346634-bd26c200-9351-11eb-8457-691991afdac5.png)

1. Method (best)
```
final titleController = TextEditingController();
final amountController = TextEditingController();
```
```
 TextField(
  decoration: InputDecoration(labelText: 'Title'),
  controller: titleController,
),
TextField(
  decoration: InputDecoration(labelText: 'Amount'),
  controller: amountController,  
),
FlatButton(
  onPressed: () {
    print(titleController.text);
  },
)
```
2. Okayish way
```
String titleInput;
String amountInput;
```
```
TextField(
  decoration: InputDecoration(labelText: 'Title'),  
  onChanged: (val) {
    titleInput = val;
  },
),
TextField(
  decoration: InputDecoration(labelText: 'Amount'),
  controller: amountController,
  onChanged: (val) => amountInput = val,
),
FlatButton(
  child: Text('Add Transaction'),
  textColor: Colors.purple,
  onPressed: () {
    print(titleInput + amountInput);
  },
)
```
Value gets stored at every key stroke

# Adding a New Transaction 🆕
```
void _addNewTransaction(String title, double amount) {
  final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now());

  setState(() {
    _userTransaction.add(newTx);
  });
}
```
`Transaction()` is the object to the transaction model class `_userTransaction()` is the array to which we append the value

# Making the List Scrollble 📜
```
body: SingleChildScrollView(
      child: Column(
```
`SingleChildScrollView` enaables the scrolling functionality

- Instead of this use 
  - `ListView` in the Column which is scrollable
    - Has an Infinite height/ Can't have a fixed height
    - Has a `ScrollDirection` option
    - children: []
    - .builder() - only showss you what's visible when using very long lists

# ListViews 🚴
```
return Container(
    height: 300,
    child: ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
            child: Row(children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2)),
              padding: EdgeInsets.all(10),
              child: Text('\$${transactions[index].amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green))),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(transactions[index].title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(transactions[index].date.toString(),
                style: TextStyle(color: Colors.grey))
          ])
        ]));
      },
      itemCount: transactions.length,
    ));
```
- Needs a container to specify the height of the `ListView`
- `ListView.builder()` needs an object `itemBuilder`
  - Which returns Context and the index in an anonymous function
  - Here you don't need to use map aas the index is being passed with `itemCount: transactions.length`
  - And the Elements are accessed with `transaction[index].amount`
