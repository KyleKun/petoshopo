import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:hive/hive.dart';
import 'package:petoshopo/model/customer.dart';
import 'package:petoshopo/pages/register_customer.dart';

class ConsultCustomer extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ConsultCustomer>
    with SingleTickerProviderStateMixin {
  TextEditingController editingController = TextEditingController();
  TabController controller;
  List<String> listItems = List();
  var items = List<String>();

  List<Customer> listCustomers = List();

  void carregarLista() {
    var myBox = Hive.box("dadosCustomers");
    print(myBox.length);
    if (myBox.length != 0) {
      for (int i = 0; i < myBox.length; i++) {
        Customer customer = myBox.getAt(i);
        listCustomers.add(customer);
        listItems.add(customer.name);
      }
    }
    items.addAll(listItems);
  }

  @override
  void initState() {
    carregarLista();

    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            header(),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 110.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: TextField(
                        onChanged: (value) {
                          filterSearchResults(
                              value); // passing the getting value
                          print('vaue :' + value);
                        },
//                            controller: editingController, //still I'm  not using
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,
                                color: Color(0xFF00C853), size: 25.0),
                            contentPadding:
                                EdgeInsets.only(left: 10.0, top: 12.0),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontFamily: 'Quicksand'))),
                  ),
                ),
              ],
            ),
          ],
        ),
        new Expanded(
            child: ListView.builder(
                itemCount: items.length, //count the value no in the list
                itemBuilder: (BuildContext ctxt, int Index) {
                  return _buildCell(context, Index, items[Index]);
                }))
      ],
    ));
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(listItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(listItems);
      });
    }
  } //Now using

  Widget header() {
    return new Container(
        height: 140.0,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF00C853),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 80.0),
                Text(
                  'Customers',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 40.0),
                IconButton(
                  onPressed: () async {
                    var myBox = Hive.box("dadosCustomers");
                    int len = myBox.length;
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterCustomer()));

                    if (Hive.box("dadosCustomers").length != len) {
                      items.clear();
                      listItems.clear();
                      listCustomers.clear();
                      carregarLista();
                      print("executei");
                    }
                  },
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.white,
                    size: 35.0,
                  ),
                )
              ],
            ),
          ],
        ));
  }

  Widget _buildCell(BuildContext context, int index, String name) {
    // same as previous video
    Customer customer = listCustomers[index];

    var vaccine = customer.dataUltimaVacinaCalendario;
    bool visibleVaccine = false;

    if (vaccine.isNotEmpty) {
      visibleVaccine = true;
    }

    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 5.0, right: 12.0),
      child: Material(
        color: Color(0xFF00C853),
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        child: SimpleFoldingCell(
          frontWidget: Container(
            color: Color(0xFF00C853),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width /
                      6, //full width get the 6 part
                  height: MediaQuery.of(context).size.width / 6,
                  child: carregarImage(customer.urlImage),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, top: 5.0),
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Phone number: ${customer.maskTelephone}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pet name: ${customer.petName}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pet breed: ${customer.petBreed}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Visibility(
                        visible: visibleVaccine,
                        child: Text(
                          'Vaccine: ${customer.dataUltimaVacinaCalendario}',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          innerTopWidget: Container(
            color: Color(0xFF77F745),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width / 6,
                  height: MediaQuery.of(context).size.width / 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0),
                      image: DecorationImage(
                          image: NetworkImage(customer.urlImage))),
                ),
              ],
            ),
          ),
          innerBottomWidget: Container(
            color: Color(0xFF77F745),
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: FlatButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text(
                      'Item $index clicked',
                    ),
                    duration: Duration(milliseconds: 500),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      name +
                          ' is an American actor of screen and stage, film director, producer, screenwriter and singer. He began his career as a stage actor during the 1980s before obtaining supporting roles in film and television',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                textColor: Colors.black,
                padding: EdgeInsets.all(5.0),
                splashColor: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          cellSize: Size(MediaQuery.of(context).size.width, 90),
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }

  Widget carregarImage(String urlImage) {
    if (urlImage != "" && urlImage != null) {
      return CircleAvatar(
        backgroundImage: NetworkImage(urlImage),
        radius: 50,
      );
    } else {
      return Icon(
        Icons.pets,
        size: 50,
        color: Colors.white,
      );
    }
  }
}
