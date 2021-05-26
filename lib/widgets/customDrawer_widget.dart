import 'package:flutter/material.dart';

buildDrawer(BuildContext context) {
  buildListTile(int index, IconData icon, String name) {
    return Container(
      child: ListTile(
        title: FlatButton(
          onPressed: () {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/homePage');
                break;
              case 1:
                Navigator.pushNamed(context, '/profesorPage');
                break;
              case 2:
                Navigator.pushNamed(context, '/estudiantePage');
                break;
              case 3:
                Navigator.pushNamed(context, '/horarioPage');
                break;

              default:
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Colors.brown[600],
              ),
              SizedBox(
                width: 35.0,
              ),
              Text(
                name,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          hoverColor: Colors.yellow[600],
        ),
      ),
    );
  }

  return Container(
    width: 265,
    child: Drawer(
      elevation: 15.0,
      child: Container(
        color: Colors.yellowAccent,
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent[700],
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage:
                            NetworkImage('https://i.imgur.com/FK0Iu4v.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    // nombre del usuario
                    "Cayo Nina",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                buildListTile(0, Icons.home, "Inicio"),
                buildListTile(1, Icons.deck_outlined, "Profesores"),
                buildListTile(2, Icons.school_rounded, "Estudiantes"),
                buildListTile(3, Icons.schedule_sharp, "Horario"),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
