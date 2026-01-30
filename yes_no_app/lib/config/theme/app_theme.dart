import 'package:flutter/material.dart';

/*
Creamos nuestro propie tema personalizado
*/

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  int selectedColor;

  AppTheme({required this.selectedColor}) {
    if (selectedColor < 0 || selectedColor >= _colorThemes.length) {
      selectedColor = 0; 
      print("Selected color must be between 0 and ${_colorThemes.length - 1}");
    }
  }

  set setSelectedColor(int newSelectedColor) {
    if (newSelectedColor < 0 || newSelectedColor >= _colorThemes.length) {
      print("Colors must be between 0 and ${_colorThemes.length - 1}");
    } else {
      selectedColor = newSelectedColor;
    }
  }

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark    para modo oscuro
    );
  }
}