import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle(fontSize: 20);

  int _contador = 0;

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
            Text('Número de clics:', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton( onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton( onPressed: _substraer, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton( onPressed: _agregar, child: Icon(Icons.add)),
      ],
    );
  }

  void _agregar(){
    setState(() => _contador++);
  }

  void _substraer(){
    setState(() {
      if(_contador != 0){
        _contador--;
      }
    });
  }

  void _reset(){
    setState(() => _contador = 0);
  }
}