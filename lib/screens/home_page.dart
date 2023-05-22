import 'package:consejero_mental_health/barra/direccion.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 109, 202, 187),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Bienvenido',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Dancing Script',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 0, 0, 0),
                    //color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_u8o7BL.json',
                  height: 250,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  user.email!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[300],
                ),
                icon: Icon(Icons.accessibility),
                label: Text("Continuar"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Direccion()));
                },
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[300],
                ),
                icon: Icon(Icons.output_rounded),
                label: Text("Cerrar sesión"),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
