import 'package:consejero_mental_health/barra/boton_nav.dart';
import 'package:consejero_mental_health/barra/routes.dart';
import 'package:consejero_mental_health/screens/ejercicios.dart';
import 'package:consejero_mental_health/screens/explorar.dart';
import 'package:consejero_mental_health/screens/para_ti.dart';
import 'package:consejero_mental_health/screens/terapia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:avatar_view/avatar_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main(List<String> args) {}

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'Menu',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Dancing Script',
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 0, 0, 0),
            //color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 109, 202, 187),
        //backgroundColor: Color.fromARGB(255, 251, 250, 250),
        //backgroundColor: Color.fromARGB(255, 159, 238, 249),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      //backgroundColor: Color.fromARGB(255, 159, 238, 249),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 1.0),
                colors: [
                  //Color.fromARGB(255, 123, 71, 213),
                  Color.fromARGB(255, 109, 202, 187),
                  Color.fromARGB(255, 109, 202, 187),
                  // Color.fromARGB(255, 251, 250, 250),
                  //Color.fromARGB(255, 159, 238, 249),
                  //Color.fromARGB(255, 1, 203, 230)
                ],
                tileMode: TileMode.repeated)),
        padding: EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(25.25),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    '¿Qué quieres hacer hoy?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  new Text(
                    'ESTADISTICAS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Divider(indent: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Divider(indent: 10),
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child: Container(
                            child: CircleAvatar(
                              radius: 20.0,
                              //backgroundColor: Colors.blue[200],
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Parati()));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 180,
                                    width: 180,
                                    child: Lottie.network(
                                        'https://assets8.lottiefiles.com/packages/lf20_yMpiqXia1k.json'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 50.0,
                  ),
                  new Text(
                    'RUTINAS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Divider(indent: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Divider(indent: 10),
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child: Container(
                            child: CircleAvatar(
                              radius: 20.0,
                              //backgroundColor: Colors.blue[200],
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Ejercicios()));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 180,
                                    width: 180,
                                    child: Lottie.network(
                                        'https://assets1.lottiefiles.com/packages/lf20_zdjUpn36hX.json'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    'CHAT BOT',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Divider(indent: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Divider(indent: 10),
                          SizedBox(
                            height: 150.0,
                            width: 150.0,
                            child: CircleAvatar(
                              radius: 20.0,
                              //backgroundColor: Colors.blue[200],
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ChatScreen()));
                                },
                                child: ClipOval(
                                  child: new SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Lottie.network(
                                        'https://assets3.lottiefiles.com/packages/lf20_5rImXbDsO1.json'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  new Text(
                    'DIETAS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      //color: Color.fromARGB(255, 251, 250, 250),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(indent: 10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Divider(indent: 1),
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child: CircleAvatar(
                            radius: 10.0,
                            //backgroundColor: Colors.blue[200],
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Explorar()));
                              },
                              child: ClipOval(
                                child: new SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Lottie.network(
                                      'https://assets2.lottiefiles.com/packages/lf20_7aJ0JNKOVj.json'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
