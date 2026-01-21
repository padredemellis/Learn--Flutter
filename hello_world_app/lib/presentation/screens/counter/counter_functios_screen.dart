import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home es la raiz de la app, scaffold es el esqueleto/estructura de la pantalla(cuerpo,cabeza,pie)
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: () {
            setState((){
              clickCounter = 0;
            })
          }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
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
          
          FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
      SizedBox(height: 15),
        FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter--;
          });
        },
        child: const Icon(Icons.exposure_minus_1_outlined),
      ),],
      )
    );
  }
}
