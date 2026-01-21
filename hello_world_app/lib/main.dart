import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';
/*
flutter/material.dart es una librería que contiene todos los widgets (botones, textos, colores, etc.) con el estilo de Material Design (el diseño de Google/Android).
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor de la clase, es la inicializacion de la llave del StatelessWidget

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, //con esto quito la etiqueta del modo de desarrollo
      home: CounterScreen());
  }
}
