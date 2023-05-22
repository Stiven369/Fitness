import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class Explorar extends StatefulWidget {
  const Explorar({super.key});

  @override
  State<Explorar> createState() => _ExplorarState();
}

class _ExplorarState extends State<Explorar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6DEC8),
      appBar: new AppBar(
        title: Text(
          'Explorar',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Dancing Script',
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 0, 0, 0),
            //color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xffF6DEC8),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              title: Text(
                'Notas que pueden interesarte',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  color: Color.fromARGB(250, 5, 5, 5),
                ),
              ),
            ),
            SizedBox(height: 30),
            Divider(indent: 10),
            //SizedBox(height: 50),
            new Text(
              'Ansiedad y depresion en adolescentes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                //color: Color.fromARGB(255, 251, 250, 250),
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              child: Stack(
                children: [
                  Image.network(
                    'https://images.ecestaticos.com/MW2t4IGETGv4NgL7rP7dmAfZI8Q=/0x0:2121x1414/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2Fbc2%2F4bc%2Fc3b%2Fbc24bcc3b5f7a11ca1527b31eeb033ef.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                const url =
                    'https://cagi.org.mx/index.php/CAGI/article/view/251';
                if (await canLaunch(url)) {
                  await launch(url, forceWebView: true);
                } else {
                  throw 'No se pudo iniciar $url';
                }

                // Navigator.of(context).push(MaterialPageRoute(
                //    builder: (context) => ResetPassword()));
              },
              child: Text(
                'Leer articulo ...',
                textAlign: TextAlign.left,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Divider(indent: 10),

            new Text(
              'Señales de advertencia de suicidio',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                //color: Color.fromARGB(255, 251, 250, 250),
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              child: Stack(
                children: [
                  Image.network(
                    'https://cnnespanol.cnn.com/wp-content/uploads/2022/09/suicidio-prevencion-sen%CC%83ales.jpg?quality=100&strip=info',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                const url =
                    'https://www.saludsiemprevc.org/prevencion-del-suicidio/senales-de-advertencia-del-suicidio';
                if (await canLaunch(url)) {
                  await launch(url, forceWebView: true);
                } else {
                  throw 'No se pudo iniciar $url';
                }
                // Navigator.of(context).push(MaterialPageRoute(
                //    builder: (context) => ResetPassword()));
              },
              child: Text(
                'Leer articulo ...',
                textAlign: TextAlign.left,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(indent: 10),

            new Text(
              'Los adolecentes también pueden padecer ansiedad',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                //color: Color.fromARGB(255, 251, 250, 250),
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              child: Stack(
                children: [
                  Image.network(
                    'https://saludycardiologia.com/wp-content/uploads/2020/08/depresion-y-ansiedad-infartos.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                const url =
                    'https://www.who.int/es/news-room/fact-sheets/detail/adolescent-mental-health#:~:text=Los%20adolescentes%20padecen%20trastornos%20emocionales,que%20entre%20adolescentes%20m%C3%A1s%20j%C3%B3venes.';
                if (await canLaunch(url)) {
                  await launch(url, forceWebView: true);
                } else {
                  throw 'No se pudo iniciar $url';
                }
                // Navigator.of(context).push(MaterialPageRoute(
                //    builder: (context) => ResetPassword()));
              },
              child: Text(
                'Leer articulo ...',
                textAlign: TextAlign.left,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(indent: 10),

            new Text(
              'Ante las pérdidas, permítete sentir y expresar tus emociones',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                //color: Color.fromARGB(255, 251, 250, 250),
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              child: Stack(
                children: [
                  Image.network(
                    'https://www.wikihow.com/images/b/bc/Mourn-Step-31.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                const url =
                    'https://kidshealth.org/es/teens/stressful-feelings.html';
                if (await canLaunch(url)) {
                  await launch(url, forceWebView: true);
                } else {
                  throw 'No se pudo iniciar $url';
                }
                // Navigator.of(context).push(MaterialPageRoute(
                //    builder: (context) => ResetPassword()));
              },
              child: Text(
                'Leer articulo ...',
                textAlign: TextAlign.left,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
