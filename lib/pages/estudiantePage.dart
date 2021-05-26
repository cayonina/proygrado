import 'package:flutter/material.dart';

class EstudiantePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Pagina de estudiante'),
      ),
      body: new Column(
        children: <Widget>[
          new Text('Estamos en estudiante'),
          RaisedButton(
              child: Text("Salir"),
              onPressed: () {
                Navigator.pushNamed(context, '/homePage');
              }),
        ],
      ),
    );
  }
}
