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
