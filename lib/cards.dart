import 'package:flutter/material.dart';
import 'package:petoshopo/api.dart';

Widget cardBathfront() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
        side: BorderSide(
          color: Color(0xFF00C853),
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
                backgroundImage: NetworkImage(
                    'http://data.biovet.com.br/file/2018/10/29/H104520-F00000-V006-2000x0.jpeg'),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Name: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Quicksand",
                      )),
                ],
              ),
            ),
            IconButton(
              onPressed: () => {
                sendSmsReminder({
                  'name': 'Caio',
                  'pet': 'Gary',
                  'date': '98',
                  'phone': '19999104356'
                })
              },
              splashColor: Colors.green,
              icon: Icon(Icons.phone),
            )
          ],
        )),
  );
}

Widget cardBathback() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
        side: BorderSide(
          color: Color(0xFF00C853),
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
                backgroundImage: NetworkImage(
                    'http://data.biovet.com.br/file/2018/10/29/H104520-F00000-V006-2000x0.jpeg'),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Breed: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Quicksand",
                      )),
                ],
              ),
            ),
            IconButton(
              onPressed: () => {},
              splashColor: Colors.green,
              icon: Icon(Icons.phone),
            )
          ],
        )),
  );
}

Widget cardVaccinefront() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
        side: BorderSide(
          color: Color(0xFF00C853),
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
                backgroundImage: NetworkImage(
                    'http://data.biovet.com.br/file/2018/10/29/H104520-F00000-V006-2000x0.jpeg'),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Name: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Quicksand",
                      )),
                ],
              ),
            ),
            IconButton(
              onPressed: () => {},
              splashColor: Colors.green,
              icon: Icon(Icons.phone),
            )
          ],
        )),
  );
}

Widget cardVaccineback() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
        side: BorderSide(
          color: Color(0xFF00C853),
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
                backgroundImage: NetworkImage(
                    'http://data.biovet.com.br/file/2018/10/29/H104520-F00000-V006-2000x0.jpeg'),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Breed ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Quicksand",
                      )),
                ],
              ),
            ),
            IconButton(
              onPressed: () => {},
              splashColor: Colors.green,
              icon: Icon(Icons.phone),
            )
          ],
        )),
  );
}
