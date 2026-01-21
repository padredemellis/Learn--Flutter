import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  // ← Estructura de pantalla
        appBar: AppBar(  // ← Barra superior
          title: Text('Dachi te amo'),
          backgroundColor: Colors.purple,
        ),
        body: Center(  // ← Centra el contenido
          child:  Text(
            'Hola Dachi!',
            style: TextStyle(fontSize: 24),  // ← Tamaño de letra
          ),
        ),
      ),
    );
  }
}
