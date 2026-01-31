import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, // Esto tira a la derecha su contenido
      children: [
        Container(
          decoration: BoxDecoration( //sirve para decorar cada caja de mensaje de texto
            color:colors.primary, //ponemos el color del theme
            borderRadius: BorderRadius.circular(20), //transforma la caja cuadrada a circular
          ),
          child: Padding( // con esto dejamos espacio entre el texto y los bordes
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
            child: Text(
              '''El Camino sigue y sigue
                  desde la puerta.
                  El Camino ha ido muy lejos,
                  y si es posible he de seguirlo
                  recorriéndolo con pie decidido (fatigado)
                  hasta llegar a un camino más ancho
                  donde se encuentran senderos y cursos.
                  ¿Y de ahí a dónde iré? No podría decirlo.''',
              style: TextStyle(color: Colors.white), // hacemos el texto tenga un color blanco
            ),
          ),
        ),
        const SizedBox(height: 10), // damos semaracion entre cada "caja"
      ],
    );
  }
}
