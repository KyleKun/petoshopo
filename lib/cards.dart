import 'package:flutter/material.dart';
import 'package:petoshopo/api.dart';
import 'dart:math';
import 'package:toast/toast.dart';


class GeneratePetName {
  static Random _random = new Random();

  List<String> owner = [
    'James Merritt',
    'Mario Moorman',
    'Felicia Liggett',
    'Keisha Waldron',
    'Albert Sanders',
    'Bennie Thompson',
    'Douglas Dixon',
    'Jack Holbrook',
    'Angela Martinez',
    'Roger Boedeker',
    'Drew Peek',
    'Stuart Miller',
    'Sharon Brochu',
    'Elsie Mcfarland',
    'Bernard Vidales',
    'Fredric Hille',
    'Tracy Stclair',
    'Helen Ortiz',
    'Kevin Burcham',
    'Tyrone Nicoletti',
    'Teresa Johnson',
    'Russell Black',
    'Donald Vickers',
    'Sarah Howard',
    'Inge Seys',
    'Beverly Pierce',
    'Sandra Moore',
    'John Munari',
    'Frank Frederick',
    'Tanner Ramirez',
    'Janet Ferrer',
    'Betty Hull',
    'Elizabeth Pressley',
    'Guillermina Bright',
    'Joe Moody',
    'Ana Sule',
    'Brian Craft',
    'Ethel Davis',
    'Shelly Evans',
    'Alexander Escobar'
  ];

  List<String> images = [
    "https://images.unsplash.com/photo-1575425186775-b8de9a427e67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjc5NjV9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1573865526739-10659fec78a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80",
    "https://images.unsplash.com/photo-1552944249-481c99e23e97?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1568307970720-a8c50b644a7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1566624790190-511a09f6ddbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1566245856371-d9467fb7aeb8?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80",
    "http://data.biovet.com.br/file/2018/10/29/H104520-F00000-V006-2000x0.jpeg",
    "https://images.unsplash.com/photo-1573433618812-f612e727b7d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
    "https://images.unsplash.com/photo-1569031089355-8273719dcf2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1569576231685-8a0bb772d2f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  ];

  List<String> names = [
    'Charlie',
    'Max',
    'Oscar',
    'Milo',
    'Ruby',
    'Coco',
    'Molly',
    'Bella',
    'Ollie',
    'Rosie',
    'Teddy',
    'Tiger',
    'Puss',
    'Misty',
    'Missy'
  ];

  String petName() {
    return names[_random.nextInt(names.length)];
  }

  String petImage() {
    return images[_random.nextInt(images.length)];
  }

  String petOwner() {
    return owner[_random.nextInt(owner.length)];
  }
}

GeneratePetName myPet = new GeneratePetName();

@override
Widget cardBathfront(BuildContext context) {
  void msg(String text) {
    Toast.show(text, context,
        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  }
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
                backgroundImage: NetworkImage(myPet.petImage()),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(myPet.petName(),
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
                msg('Automated Call Started!'),
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
              padding: EdgeInsets.fromLTRB(8, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text("Owner: " + myPet.petOwner(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "Quicksand",
                          ))),
                ],
              ),
            ),
          ],
        )),
  );
}

@override
Widget cardVaccinefront(BuildContext context) {
  String namePet = myPet.petName();
  void msg(String text) {
    Toast.show(text, context,
        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  }
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
                backgroundImage: NetworkImage(myPet.petImage()),
              ),
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(namePet,
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
                  'name': 'John',
                  'pet': namePet,
                  'date': '2019/12/12',
                  'phone': '19999104356'
                }),
                msg('SMS Reminder Sent!')
              },
              splashColor: Colors.green,
              icon: Icon(Icons.sms),
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
              padding: EdgeInsets.fromLTRB(8, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text("Owner: " + myPet.petOwner(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "Quicksand",
                          ))),
                ],
              ),
            ),
          ],
        )),
  );
}
