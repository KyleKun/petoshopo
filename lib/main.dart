import 'package:flutter/material.dart';

void main() => runApp(Petoshopo());
//N leia essa msg
//Eu falei para n ler essa msg
//Sinto muito, eu li essa msg 
class Petoshopo extends StatelessWidget {
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
              Text('Coming soon...'),
            ],
          ),
        ),
      ),
    );
  }
}