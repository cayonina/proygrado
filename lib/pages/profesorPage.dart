import 'package:flutter/material.dart';

class ProfesorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Pagina de profesor'),
      ),
      body: new Column(
        children: <Widget>[
          new Text('Estamos en profesor'),
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
