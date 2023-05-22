import 'package:consejero_mental_health/crud.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Parati extends StatelessWidget {
  const Parati({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'ESTADISTICAS',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Dancing Script',
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 0, 0, 0),
            //color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 109, 202, 187),
      ),
      backgroundColor: const Color.fromARGB(255, 109, 202, 187),
      extendBody: true,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 15),
            Center(
              child: Lottie.network(
                'https://assets3.lottiefiles.com/private_files/lf30_rhwceowh.json',
                height: 200,
              ),
            ),
            //SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "¿Qué estadisticas puedes encontrar?",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Dancing Script'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bienvenido a nuestra aplicacion de notas Fitnes 04. Con nuestra aplicación,. Con nuestra aplicación, nunca más tendrás que preocuparte por subir de peso. ¡Comienza a organizar tu vida nutricional y haz crecer tu creatividad con nuestro aplicacion de Fitness 04 personal hoy mismo!",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[300],
                        ),
                        icon: Icon(Icons.book),
                        label: Text("Iniciar"),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Crud()));
                        },
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
