import 'package:flutter/material.dart';
import 'menu_sidebar.dart';


class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [1,1],
                  colors: [
                    Color(0xFF00C853),
                    Color(0xFF77F745)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
             )
              ),
              child:
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                      child: Icon(Icons.pets,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 22,
                          right: 32,
                          left: 32
                        ),
                        child: Text('Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Quicksand"
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ), 

              Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 42),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.person,
                            color: Colors.grey,
                        ),
                          hintText: 'Name',
                          labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),

                Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.phone,
                          color: Colors.grey,
                        ),
                        hintText: 'Telephone',
                        labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),
                   Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.pets,
                          color: Colors.grey,
                        ),
                        hintText: 'Pet name',
                        labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.pets,
                          color: Colors.grey,
                        ),
                        hintText: 'Pet breed',
                        labelStyle: TextStyle(
                        fontFamily: "Quicksand",
                ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 20),

                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [0.1,1],
                        colors: [
                    Color(0xFF00C853),
                    Color(0xFF77F745)
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      )
                    ),
                    child: Center(
                      child: FlatButton(
                      child: Text('Sign in'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Quicksand"
                        ),
                      ), onPressed: () {Navigator.push( context, new MaterialPageRoute(builder: (context) => MenuDashboardPage(),
               ),
             );
              }
              )
            )
           ),
          ],
        ),
      ),
          ]
        ))
    );
  }
}