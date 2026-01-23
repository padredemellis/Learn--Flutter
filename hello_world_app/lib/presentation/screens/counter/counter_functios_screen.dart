import 'package:flutter/material.dart';
import 'dart:math'; // Necesario para generar colores aleatorios

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  // 1. Nueva variable para el color de fondo
  Color backgroundColor = Colors.white;

  // 2. Función para cambiar el color (la llamaremos en cada acción)
  void _updateBackgroundColor() {
    backgroundColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withValues(alpha: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 3. Aplicamos el color al Scaffold
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Un contador cool'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
                _updateBackgroundColor(); // Cambia color al reiniciar
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
                _updateBackgroundColor();
              });
            },
          ),
          const SizedBox(height: 15),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;
              setState(() {
                clickCounter--;
                _updateBackgroundColor(); // Cambia color al restar
              });
            },
          ),
          const SizedBox(height: 15),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
                _updateBackgroundColor(); // Cambia color al sumar
              });
            },
          ),
        ],
      ),
    );
  }
}

// Widget personalizado (se mantiene igual)
class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}