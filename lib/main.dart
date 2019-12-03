import 'package:flutter/material.dart';

void main() => runApp(Petoshopo());

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