import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

// Crear una clase que haga mi estilo
  final estiloTexto = new TextStyle(fontSize: 20);

  final contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clics:', style: estiloTexto),
            Text('$contador', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          //contador++;
         },
      ),
    );
  }
}