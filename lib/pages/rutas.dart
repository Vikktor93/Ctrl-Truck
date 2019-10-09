import 'package:ctrl_truck/pages/ruta_iniciada.dart';
import 'package:flutter/material.dart';
import '../forms/inicio_ruta.dart';
 
class RutasActivas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 15.0),
            child: List1()
          ),
        ),
    );
  }
}

class List1 extends StatelessWidget {
  final String title;

  List1({this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.check_circle, size: 30),
            title: Text('Ruta 01 de Octubre', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            subtitle: Text('Osorno - Hornopiren'),
            onTap: () {
              print('Map Clicked');
            },
          ),
         ListTile(
            leading: Icon(Icons.check_circle, size: 30),
            title: Text('Ruta 02 de Octubre', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            subtitle: Text('Osorno - Puerto Montt'),
            onTap: () {
              print('Map Clicked');
            },
          ),
           ListTile(
            leading: Icon(Icons.check_circle,size: 30, color: Colors.green),
            title: Text('Ruta 03 de Octubre', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            subtitle: Text('Osorno - Castro'),
            onTap: () {
             Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => InicioRuta()
                          )
                      );
            },
          ),
        ],
      ),
    );
  }

}