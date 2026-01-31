import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Esto tira a la izquierda su contenido
      children: [
        Container(
          decoration: BoxDecoration(
            //sirve para decorar cada caja de mensaje de texto
            color: colors.secondary, //ponemos el color del theme
            borderRadius: BorderRadius.circular(
              20,
            ), //transforma la caja cuadrada a circular
          ),
          child: Padding(
            // con esto dejamos espacio entre el texto y los bordes
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              '''El Camino sigue y sigue
                desde la puerta.
                El Camino ha ido muy lejos,
                y que otros lo sigan si pueden.
                Que ellos emprendan un nuevo viaje,
                pero yo al fin con pies fatigados
                me volveré a la taberna iluminada,
                al encuentro del sueño y el reposo.''',
              style: TextStyle(
                color: Colors.white,
              ), // hacemos el texto tenga un color blanco
            ),
          ),
        ),
        const SizedBox(height: 5), // damos semaracion entre cada "caja"
        _ImageBubble(),
        const SizedBox(height: 10), //Acordate para que no queden pegados
        //TODO: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/yes/4-c53643ecec77153eefb461e053fb4947.gif",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text("Ella está enviando una imagen"),
          );
        },
      ),
    );
  }
}
