import 'package:flutter/material.dart';
		
class FormInicio extends StatelessWidget {	

  @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text('Inicio de Ruta', style: TextStyle(color: Colors.white)),
          ),
          body: SingleChildScrollView(
            child: DropdownExample(),
            ),
        );
    }
  }
	
  class DropdownExample extends StatefulWidget {
    @override
    _DropdownExampleState createState() {
	
      return _DropdownExampleState();
    }	
  }
	
class _DropdownExampleState extends State<DropdownExample> {
  String _valueHoraLlegada;
  String _valueInicioCarga;
  String _valueHoraSalida;

    @override	
      Widget build(BuildContext context) {
	
      return Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
                 Container(
                   padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                   child: Text('Ruta 03-10-2019', style: TextStyle(fontSize: 14.0, color: Colors.red[600], fontWeight: FontWeight.bold)),
                 )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Column(         
                children: <Widget>[
                  Container(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('Hora Llegada: ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.red[600])),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child:  DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
	                child: Text('08:00'),	
                  value: '1',
                  ),
	
                  DropdownMenuItem<String>(
                  child: Text('09:00'),
                  value: '2',
                  ),
                  
                  DropdownMenuItem<String>(
                  child: Text('10:00'),
                  value: '3',
                  ),

                  DropdownMenuItem<String>(
	                child: Text('11:00'),	
                  value: '4',
                  ),
	
                  DropdownMenuItem<String>(
                  child: Text('12:00'),
                  value: '5',
                  ),
                  
                  DropdownMenuItem<String>(
                  child: Text('13:00'),
                  value: '6',
                  ),
                ],
	
                onChanged: (String valueHoraLlegada) {
                  setState(() {
                    _valueHoraLlegada = valueHoraLlegada;
                   });
                },
                hint: Text('Seleccionar Hora'),
                value: _valueHoraLlegada,
              ),
                ),
                ],
              ),

              Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                    hintText: 'Km Camión',
                    ),
                    onChanged: (value) => {},
                  ),
                ),              

                ),
                ],
              ),
                
            ],
          ),

          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(width: 165.0),
                ],

              ),

              Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                    hintText: 'Hora Generador',
                    ),
                    onChanged: (value) => {},
                  ),
                ),              

                ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.0),

          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('Inicio Carga: ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.red[600])),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child:  DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
	                child: Text('08:00'),	
                  value: '1',
                  ),
	
                  DropdownMenuItem<String>(
                  child: Text('09:00'),
                  value: '2',
                  ),
                  
                  DropdownMenuItem<String>(
                  child: Text('10:00'),
                  value: '3',
                  ),
                ],
	
                onChanged: (String valueInicioCarga) {
                  setState(() {
                    _valueInicioCarga = valueInicioCarga;
                   });
                },
                hint: Text('Seleccionar Hora'),
                value: _valueInicioCarga,
              ),
                ),

                ],
              ),
              
               Column(
                children: <Widget>[
                  Container(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('Fin Carga: ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.red[600])),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child:  DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
	                child: Text('08:00'),	
                  value: '1',
                  ),
	
                  DropdownMenuItem<String>(
                  child: Text('09:00'),
                  value: '2',
                  ),
                  
                  DropdownMenuItem<String>(
                  child: Text('10:00'),
                  value: '3',
                  ),
                ],
	
                onChanged: (String valueInicioCarga) {
                  setState(() {
                    _valueInicioCarga = valueInicioCarga;
                   });
                },
                hint: Text('Seleccionar Hora'),
                value: _valueInicioCarga,
              ),
                ),

                ],
              ),        
            ],
          ),

          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                    hintText: 'Número Guía',
                    ),
                    onChanged: (value) => {},
                  ),
                ),             
                ),
                ],
              ),


               Column(
                children: <Widget>[
                  Container(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Text('Hora Salida: ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.red[600])),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child:  DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
	                child: Text('08:00'),	
                  value: '1',
                  ),
	
                  DropdownMenuItem<String>(
                  child: Text('09:00'),
                  value: '2',
                  ),
                  
                  DropdownMenuItem<String>(
                  child: Text('10:00'),
                  value: '3',
                  ),
                ],
	
                onChanged: (String valueHoraSalida) {
                  setState(() {
                    _valueHoraSalida = valueHoraSalida;
                   });
                },
                hint: Text('Seleccionar Hora'),
                value: _valueHoraSalida,
              ),
                ),

                ],
              ),        


            ],
          ),

          Row(
            children: <Widget>[
               Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                    hintText: 'Guía Agua',
                    ),
                    onChanged: (value) => {},
                  ),
                ),             
                ),
                ],
              ),

               Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                    hintText: 'Cert Desinfección',
                    ),
                    onChanged: (value) => {},
                  ),
                ),             
                ),
                ],
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                Container(
                  width: 170.0,
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                  child:  DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
	                child: Text('Pesada'),	
                  value: '1',
                  ),
	
                  DropdownMenuItem<String>(
                  child: Text('Sustancias'),
                  value: '2',
                  ),
                  
                  DropdownMenuItem<String>(
                  child: Text('Peligrosa'),
                  value: '3',
                  ),
                ],
	
                onChanged: (String valueHoraSalida) {
                  setState(() {
                    _valueHoraSalida = valueHoraSalida;
                   });
                },
                hint: Text('Tipo de Carga'),
                value: _valueHoraSalida,
              ),
                ),

                ],
              ),        

               Column(
                children: <Widget>[
                Container(
                  width: 170.0,
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                  child:  DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
	                child: Text('Salmón'),	
                  value: '1',
                  ),
	
                  DropdownMenuItem<String>(
                  child: Text('Jurel'),
                  value: '2',
                  ),
                  
                  DropdownMenuItem<String>(
                  child: Text('Sardina'),
                  value: '3',
                  ),
                ],
	
                onChanged: (String valueHoraSalida) {
                  setState(() {
                    _valueHoraSalida = valueHoraSalida;
                   });
                },
                hint: Text('Tipo de Especie', textAlign: TextAlign.start,),
                value: _valueHoraSalida,
              ),
                ),

                ],
              ),       
            ],
          ),

           Row(
            children: <Widget>[
               Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                    hintText: 'Peso Promedio',
                    ),
                    onChanged: (value) => {},
                  ),
                ),             
                ),
                ],
              ),

               Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                    hintText: 'Densidad',
                    ),
                    onChanged: (value) => {},
                  ),
                ),             
                ),
                ],
              ),
            ],
          ),

           Row(
            children: <Widget>[
               Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                    hintText: 'Cantidad',
                    ),
                    onChanged: (value) => {},
                  ),
                ),             
                ),
                ],
              ),

               Column(
                children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                  child: Container(
                  width: 150,
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                    hintText: 'Presión Oxigeno',
                    ),
                    onChanged: (value) => {},
                  ),
                ),             
                ),
                ],
              ),
            ],
          ),

          SizedBox(height: 10.0),
      
              RaisedButton(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
                  child: Text('Check List de Carga', style: TextStyle(fontSize: 20)),
                    ),
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 0.0,
                color: Colors.redAccent,
                textColor: Colors.white,
                onPressed: () => Navigator.pushReplacementNamed(context, 'check')
                  ),

        ],
      );
    }
  }
