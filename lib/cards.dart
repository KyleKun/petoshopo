import 'package:flutter/material.dart';

Widget cardBath() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
    child: Container(
        width: 400,
        height: 100,
        child: Row(
          children: <Widget>[
            Padding(
              child: CircleAvatar(
                radius: 40,
                backgroundImage:
                NetworkImage('http://data.biovet.com.br/file/2018/10/29/H104520-F00000-V006-2000x0.jpeg'),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Name: "),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Call"),
            )
          ],
        )),
  );
}

Widget cardVaccine() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
    child: Container(
        width: 400,
        height: 100,
        child: Row(
          children: <Widget>[
            Padding(
              child: CircleAvatar(
                radius: 40,
                backgroundImage:
                NetworkImage('http://data.biovet.com.br/file/2018/10/29/H104520-F00000-V006-2000x0.jpeg'),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Name: "),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Call"),
            )
          ],
        )),
  );
}