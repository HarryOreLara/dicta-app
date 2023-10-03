import 'package:flutter/material.dart';

const colorList = <Color>[
  Color(0xFF003976),
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.pinkAccent,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  final bool mode;

  AppTheme({this.mode = false, this.selectedColor = 6})
      : assert(selectedColor >= 0, 'El color debe ser mayor que cero'),
        assert(selectedColor < colorList.length,
            'El color debe ser menor a la lista de colorres');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: mode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));

  AppTheme copyWith({int? selectedColor, bool? mode}) => AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      mode: mode ?? this.mode);
}
