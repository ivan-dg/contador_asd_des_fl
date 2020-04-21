import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  // Llama a la clase donde se ve en estado de la misma
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // Pantalla principal donde se cargan los widget como el appbar, column y otros
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          // Centra el texto en la mitad de la pantalla dentro de la columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}

// // Posiciona el boton flotante
// floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
// // Widget boton flotante
// floatingActionButton: FloatingActionButton(
//   // Accion que se ejecuta cuando se presiona el boton
//   onPressed: () {
//     // print('Hola puto');
//     setState(() {
//       _conteo++;
//     });
//   },
//   child: Icon(Icons.add),
// ),
