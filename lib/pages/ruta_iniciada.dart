import 'package:flutter/material.dart';
import '../forms/inicio_ruta.dart';
		
class InicioRuta extends StatelessWidget {	
  @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text('Menu Ruta Iniciada', style: TextStyle(color: Colors.white)),
          ),
          body: SingleChildScrollView(
            child: RutaActual(),
            ),
        );
    }
  }
	
  class RutaActual extends StatefulWidget {
    @override
    _RutaActual createState() {
	
      return _RutaActual();
    }	
  }
	
class _RutaActual extends State<RutaActual> {

    @override	
      Widget build(BuildContext context) {
	
      return Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          Text('Ruta 03-10-2019', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
                child: Text('Origen:     ', style: TextStyle(fontSize: 18.0, color: Colors.red[600], fontWeight: FontWeight.bold)),
                ),

                Container(
                child: Text('Osorno', style: TextStyle(fontSize: 16.0)),
                ),

                
            ],
          ),

          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
                child: Text('Destino:    ', style: TextStyle(fontSize: 18.0, color: Colors.red[600], fontWeight: FontWeight.bold)),
                ),

               Container(
                child: Text('Calbuco', style: TextStyle(fontSize: 16.0)),
                ),

            ],
          ),

            Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
                child: Text('Móvil:        ', style: TextStyle(fontSize: 18.0, color: Colors.red[600], fontWeight: FontWeight.bold)),
                ),
                
                Container(
                child: Text('CK-4567', style: TextStyle(fontSize: 16.0)),
                ),              
            ],
          ),

          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
                child: Text('Lugar Desinfección:  ', style: TextStyle(fontSize: 18.0, color: Colors.red[600], fontWeight: FontWeight.bold)),
                ),
                
               Container(
                child: Text('Carretera 5 Sur', style: TextStyle(fontSize: 16.0)),
                ),             
            ],
          ),

          SizedBox(height: 170.0),
      
              RaisedButton(
          
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  child: Text('Iniciar Ruta', style: TextStyle(fontSize: 20)),
                    ),
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 0.0,
                color: Colors.redAccent,
                textColor: Colors.white,
                onPressed: () =>  Navigator.pushReplacementNamed(context, 'form-inicio')
                  ),

        ],
      );
    }
  }
