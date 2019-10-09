import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  @override
  RadioButtonState createState() {
    return new RadioButtonState();
  }
  
}

class RadioButtonState extends State<Check> {
// Declare this variable
int selectedRadio;
 
@override
void initState() {
  super.initState();
  selectedRadio = 0;
}

// Changes the selected value on 'onChanged' click on each radio button
setSelectedRadio(int val) {
  setState(() {
    selectedRadio = val;
  });
}
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text('Checklist', style: TextStyle(color: Colors.white)),
          ),
      body: Center(
        child: Column(
            children: <Widget>[
              SizedBox(height: 160.0),

              Text('Hongos, Agallas, Aletas, Colas', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red[600])),
              SizedBox(height: 60.0),
              
              Container(
                padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                            Text('Si', style: TextStyle(fontSize: 20.0,)),
                            Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.redAccent,
                            onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },  
                        ),
                        ], 
                      ),
                      SizedBox(width: 35.0),
                      Row(
                        children: <Widget>[
                            Text('No', style: TextStyle(fontSize: 20.0,)),
                            Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            activeColor: Colors.redAccent,
                            onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        ], 
                      ),
                       
                    ],

                    
                  ),

                  
                ),
                  SizedBox(height: 60.0),

                  RaisedButton(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
                  child: Text('Siguiente', style: TextStyle(fontSize: 20)),
                    ),
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 0.0,
                color: Colors.redAccent,
                textColor: Colors.white,
                onPressed: () {}
                  ),
                
            ],
        ),

  
       ),
    );
  }
}