import 'package:flutter/material.dart';
import 'package:petoshopo/pages/menu_sidebar.dart';

void main() => runApp(Petoshopo());

class Petoshopo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: MenuDashboardPage());
  }
}