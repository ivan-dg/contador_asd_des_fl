import 'package:flutter/material.dart';
import 'package:my_app/src/pages/contador_page.dart';
// import 'package:my_app/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  // Sobrescribe el metodo build de que tenga el stalesswidget
  @override
  // Metodo build con argumento context que trae la informacion del arbol de widgets temas iconos padres nietos
  Widget build(BuildContext context) {
  // Devuelve el widget Material app que llama al constructor con todos los argumentos de la clase materialapp
    return MaterialApp(
      // Quita el banner de debug
      debugShowCheckedModeBanner: false,
      // Widget home que contiene el widget para centrar este tiene como hijo al text con el widget child
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}