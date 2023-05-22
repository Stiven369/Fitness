import 'package:consejero_mental_health/barra/boton_nav.dart';
import 'package:consejero_mental_health/barra/routes.dart';
import 'package:flutter/material.dart';


class Direccion extends StatefulWidget {
  const Direccion({super.key});

  @override
  State<Direccion> createState() => _DireccionState();
}

class _DireccionState extends State<Direccion> {
  int index=0;
  BNavigator ?myBNB;
  @override
  void initState() {
    // TODO: implement initState
    myBNB = BNavigator(currentIndex: (i){
      setState(() {
        index=i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      body: Routes(index: index),
      );
      
  }
}
