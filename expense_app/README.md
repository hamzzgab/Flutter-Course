# expense_app
## Adding assets `pubspec.yaml` ➕
```
flutter:
  uses-material-design: true
 
  assets:
    - assets/images/waiting.png  

fonts:
- family: OpenSans
  fonts:
    - asset: assets/fonts/OpenSans-Regular.ttf
    - asset: assets/fonts/OpenSans-Bold.ttf
      weight: 700

- family: Quicksand
  fonts:
    - asset: assets/fonts/Quicksand-Regular.ttf
    - asset: assets/fonts/Quicksand-Bold.ttf
      weight: 700
```
- Different fonts are to be added in different `family:`.
- If the weight is defined add the weight of the font.
- For adding external assets use the `flutter:` and add `assets:`

## Setting the theme 👗
