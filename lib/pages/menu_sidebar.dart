import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'register_customer.dart';
import 'statistics.dart';
import 'customers_screen.dart';
import 'package:petoshopo/cards.dart';

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  int page = 0;

  static Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }

  Color orangeColor = hexToColor('#FFB056');
  Color greenColor = hexToColor('#69DC9E');
  Color white = hexToColor('#FCFEFE');

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ConsultCustomer()));
          }
          if (index == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Statistics()));
          }
        },
        index: 1,
        height: 50,
        color: Color(0xFF00C853),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        items: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => ConsultCustomer()));
            },
          ),
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.insert_chart),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Statistics()));
            },
          )
        ],
      ),
      backgroundColor: white,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Container(
        color: orangeColor,
        child: SlideTransition(
            position: _slideAnimation,
            child: ScaleTransition(
                scale: _menuScaleAnimation,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 125,
                          margin: EdgeInsets.only(top: 40, left: 30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.ibb.co/3sQ0f6b/oie-oie-trim-image.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        new ListTile(
                            contentPadding: EdgeInsets.only(left: 55),
                            title: new Text('Petoshopo',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontFamily: "Quicksand",
                                )),
                            onTap: () {}),
                        SizedBox(height: 20),
                        new ListTile(
                            title: new Text('Register Customer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontFamily: "Quicksand",
                                )),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new RegisterCustomer()));
                            }),
                        new Divider(color: Colors.black, height: 5.0),
                        new ListTile(
                          title: new Text('About us',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: "Quicksand",
                              )),
                          onTap: () {
                            showAboutDialog(
                              context: context,
                              applicationIcon: FlutterLogo(),
                              applicationName: 'Petoshopo',
                              applicationVersion: '1.0.0',
                              applicationLegalese:
                                  'Developed by Caio Pedroso, Augusto Vesco Raveli and Samuel Marques \nGithub repo: https://github.com/KyleKun/petoshopo',
                            );
                          },
                        ),
                        new Divider(color: Colors.black, height: 5.0),
                        new ListTile(
                            title: new Text(
                                '@2019 Petoshopo,\n All Rights Reserved',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontFamily: "Quicksand",
                                )),
                            onTap: () => {}),
                      ],
                    ),
                  ),
                ))));
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.2 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          elevation: 8,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu, color: Colors.black),
                        onTap: () {
                          setState(() {
                            if (isCollapsed)
                              _controller.forward();
                            else
                              _controller.reverse();

                            isCollapsed = !isCollapsed;
                          });
                        },
                      ),
                      Text(
                        "Petoshopo",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Quicksand",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text("Today's Grooming",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: "Quicksand",
                              )),
                          SingleChildScrollView(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Color(0xFF00C853),
                              elevation: 2,
                              child: Container(
                                height: 350,
                                width: double.infinity,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return FlipCard(
                                      //flipOnTouch: false,
                                      front: cardBathfront(context),
                                      back: cardBathback(),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 35),
                          Text("Vaccinations this week",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: "Quicksand",
                              )),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Color(0xFF00C853),
                              elevation: 2,
                              child: Container(
                                height: 350,
                                width: double.infinity,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return FlipCard(
                                      flipOnTouch: true,
                                      front: cardVaccinefront(context),
                                      back: cardVaccineback(),
                                    );
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
