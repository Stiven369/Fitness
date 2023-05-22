import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Normas extends StatelessWidget {
  const Normas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
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
                'https://assets1.lottiefiles.com/packages/lf20_fzzmcfqb.json',
                height: 250,
              ),
            ),
            //SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "¿Quien soy?",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Dancing Script'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Soy aplicación de autoayuda para llevar un control de tus rutinas y dietas para una vida saludable. Esperamos que encuentres aquí apoyo y herramientas útiles para manejar  tu bienestar nutricional. ¡Recuerda que siempre estás en control de tu propia felicidad y que mereces una vida plena y saludable!",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(height: 15),
                      /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text("Inicio", style:TextStyle(
                  color: Colors.white,
                fontSize:20 ,
                  fontFamily: 'Dancing Script'
                )
                )
              ),
              TextButton(
                onPressed :() {   }, 
                child: Text("SKIP", style:TextStyle(
                fontSize: 14,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'Dancing Script'
                ),
              )
              )
              ]
             ),*/
                      //  SizedBox(height: 30,),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
