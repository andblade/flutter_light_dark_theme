import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  // logica
  bool _interruptor = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark, primaryColor: Colors.white);
  ThemeData _light = ThemeData(brightness: Brightness.light, primaryColor: Colors.black);

  @override
  Widget build(BuildContext context) {

    // Retorno o MaterialApp pela segunda vez
    
    return MaterialApp(
      theme: _interruptor ? _dark : _light,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Light & Dark Theme"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.lightbulb_outline, size: 100, color: Colors.yellowAccent,),
              SizedBox(height:38),
              Text("interruptor", style: TextStyle(fontSize: 35),),
              SizedBox(height:20),

              Switch(
                value: _interruptor,
                onChanged: (_novoValor){
                  setState(() {
                    _interruptor = _novoValor;
                  });
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}