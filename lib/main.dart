import 'package:ctrl_truck/forms/checklist.dart';
import 'package:ctrl_truck/pages/ruta_iniciada.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import './forms/inicio_ruta.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ctrl-Truck',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>   {
           'home': (BuildContext context) => HomePage(),
           'login': (BuildContext context) => LoginPage(),
           'form-inicio': (BuildContext context) => FormInicio(),
           'ruta-iniciada': (BuildContext context) => InicioRuta(),
           'check': (BuildContext context) => Check()
        }
    );
  }
}
