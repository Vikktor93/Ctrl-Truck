import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './pages/rutas.dart';
import './pages/historico.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  
  Widget callPage(int selectedIndex){
    switch (selectedIndex) {
      case 0 : return RutasActivas();
      case 1 : return RutasHistoricas();
        break;
      default:
    }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Inicio', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: callPage(selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.check_circle, size: 40.0), title: Text('Rutas Activas')),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping, size: 40.0), title: Text('Rutas Historicas')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.redAccent,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}