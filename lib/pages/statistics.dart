import 'package:flutter/material.dart';
import 'package:petoshopo/FadeAnimation.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
           gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1,1],
                  colors: [
                    Color(0xFF00C853),
                    Color(0xFF77F745)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
             )
              ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Petoshopo", style: TextStyle(color: Colors.white, fontSize: 40, fontFamily: "Quicksand"),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Your services rating", style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "Quicksand"),)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      FadeAnimation(1.4, Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(225, 95, 27, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10)
                          )]
                        ),
                      )),
                      FadeAnimation(1.5, Text("This month", style: TextStyle(color: Colors.black, fontFamily: "Quicksand", fontSize: 22),)),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        FadeAnimation(1.6, Text("9-10:", style: TextStyle(color: Colors.black, fontFamily: "Quicksand", fontSize: 18),)),
                        FadeAnimation(1.7, Text("44", style: TextStyle(color: Colors.black, fontFamily: "Quicksand", fontSize: 18),)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        FadeAnimation(1.8, Text("7-8:", style: TextStyle(color: Colors.black, fontFamily: "Quicksand", fontSize: 18),)),
                        FadeAnimation(1.9, Text("6", style: TextStyle(color: Colors.black, fontFamily: "Quicksand", fontSize: 18),)),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}