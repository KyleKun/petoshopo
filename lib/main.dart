import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:petoshopo/pages/menu_sidebar.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  final appDocument = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocument.path);
  await Hive.openBox("dadosCustomers");
  runApp(Petoshopo());
}

class Petoshopo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MenuDashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
