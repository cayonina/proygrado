import 'package:flutter/material.dart';

class HorarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Pagina de horario'),
      ),
      body: new Column(
        children: <Widget>[
          new Text('Estamos en horario'),
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
