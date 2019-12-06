import 'package:flutter/material.dart';
import 'api.dart';

void main() => runApp(Petoshopo());
//N leia essa msg
//Eu falei para n ler essa msg
//Sinto muito, eu li essa msg 
class Petoshopo extends StatelessWidget {
  String url;
  var Data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Petoshopo'), backgroundColor: Colors.teal.shade800,),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed : () async {
                  url = 'http://10.0.2.2:5000/';
                  Data = await Getdata(url);
                },
                child: Text(
                  "Enviar SMS",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}