
import 'package:consejero_mental_health/pages/list_pages.dart';
import 'package:consejero_mental_health/pages/safe_pages.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(Crud());
}

class Crud extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ListPage.ROUTE,
      //initialRoute: SavePage.ROUTE,
      routes: {
        ListPage.ROUTE: (_) => ListPage(),
        SavePage.ROUTE: (_) => SavePage(),
      },
    );
  }
}