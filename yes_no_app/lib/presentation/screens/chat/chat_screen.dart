import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

/*
Aquí creamos una pantalla para nuestro chat
*/
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://mx.pinterest.com/eldangamex/videl/',
            ),
          ),
        ),
        title: const Text('Mi amor'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
              ),
            ),

            Text('CreandoAlgoNuevo'),
          ],
        ),
      ),
    );
  }
}

/*
0-Definición de Clase: Creamos ChatScreen como un StatelessWidget, que es la base de nuestra pantalla.

1-Estructura Principal: Retornamos un Scaffold que organiza las partes principales de la interfaz (appbar y cuerpo).

2-Leading (Inicio): En el AppBar definimos un leading para colocar un elemento al inicio de la barra.

3-Márgenes del Avatar: Usamos un Padding de 4.0 en todos los bordes para que el avatar no toque los límites del AppBar.

4-Avatar Circular: Usamos CircleAvatar para mostrar la imagen de perfil en forma circular.

5-Imagen Remota: Cargamos la foto mediante NetworkImage (recuerda que debe ser un link directo a la imagen).

6-Título y Alineación: Definimos el título del chat y con centerTitle: false lo alineamos a la izquierda (junto al avatar).

7-Cuerpo de la App: En el body llamamos a _Chat_View, separando la lógica de la vista del chat para mayor orden.

8-Vista Especializada: Creamos _Chat_View como una clase privada (por el guion bajo _) para manejar el contenido del chat.

9-Seguridad de Pantalla: Envolvemos todo en un SafeArea para evitar que el contenido se tape con el "notch", la cámara o la barra de estado del celular.

10-Margen Lateral: Aplicamos un Padding simétrico horizontal de 10 para que los mensajes no toquen los bordes laterales de la pantalla.

11-Organización Vertical: Usamos una Column para apilar la lista de mensajes sobre el campo de texto.

12-Uso de Expanded: Envolvemos el ListView.builder en un Expanded para que la lista crezca y ocupe todo el espacio sobrante, empujando el texto hacia abajo.

14-Constructor de Listas: ListView.builder crea elementos bajo demanda (eficiencia); con itemCount: 100 generamos 100 elementos de prueba.

*/
