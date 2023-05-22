import 'package:consejero_mental_health/perfil.dart';
import 'package:consejero_mental_health/screens/politicas.dart';
import 'package:consejero_mental_health/screens/tips.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

@override
Widget build(BuildContext context){
  List <Widget> myList=[
    const Tips(),
    const Normas(),
    const Perfil()
  ];
  return myList[index];
  }
}