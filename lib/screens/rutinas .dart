import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Ejercicios extends StatefulWidget {
  const Ejercicios({super.key});

  @override
  State<Ejercicios> createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(109, 202, 187, 1),
      appBar: new AppBar(
        title: Text('RUTINAS'),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 1.0),
                colors: [
                  // Color.fromARGB(255, 123, 71, 213),
                  //Color(0xffF6DEC8),
                  //Color(0xffF6DEC8),

                  Color(0xFF6DCABB),
                  Color(0xFF6DCABB)

                  //Color.fromARGB(255, 159, 238, 249)
                  //Color.fromARGB(255, 1, 203, 230)
                ],
                tileMode: TileMode.repeated)),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            CarouselSlider(
              items: [
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://www.cambiatufisico.com/wp-content/uploads/abdominales5.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                        padding: EdgeInsets.all(10),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.8),
                        child: Text(
                          'ENTRENAMIENTO ABDOMEN',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Tiene beneficios como fortalecer los músculos abdominales, mejorar la postura, prevenir dolores de espalda, y mejorar la estabilidad y el equilibrio del cuerpo. Sin embargo, es importante realizar los ejercicios de manera correcta y segura para evitar lesiones y obtener el máximo beneficio.                   ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                    YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId:
                            'https://www.youtube.com/watch?v=WOk4Im8JarY',
                        flags: YoutubePlayerFlags(
                          autoPlay: true,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                    ),
                    /*Stack(
                      children: [
                        // Otros widgets adicionales pueden ir aquí

                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: YoutubePlayer(
                            controller: YoutubePlayerController(
                              initialVideoId:
                                  'https://www.youtube.com/watch?v=RPfxeHWm8Oo',
                              flags: YoutubePlayerFlags(
                                autoPlay: true,
                                mute: false,
                              ),
                            ),
                            showVideoProgressIndicator: true,
                          ),
                        ),
                      ],
                    ),*/
                  ]),
                ),

                //videos
                /*
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://www.youtube.com/watch?v=vPEnrkuzDS4&list=RDvPEnrkuzDS4&start_radio=1';
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
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ), */

                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-867359616-1566933683.jpg?resize=480:*',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'ENTRENAMIENTO DE PIERNA',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'El entrenamiento de las piernas con ejercicios como sentadillas y levantamiento de peso puede ayudarte a desarrollar la fuerza y resistencia muscular.Los ejercicios de estiramientos y movilidad a menudo se combinan con entrenamientos de piernas para mejorar la flexibilidad y reducir el riesgo de lesiones.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2022/09/06/16624574510019.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'ENTRENAMIENTO DE GLUTEOS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.8),
                        child: Text(
                          'El entrenamiento de los glúteos con ejercicios como las sentadillas y las estocadas puede ayudarte a desarrollar la fuerza y resistencia muscular. Al fortalecer los glúteos, se puede mejorar la postura y reducir el riesgo de lesiones en la espalda.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://media.revistagq.com/photos/5f33afbfec450302028a96bf/16:9/pass/GettyImages-615883260.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'ENTRENAMIENTO DE BRAZOS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Desarrollar la fuerza y resistencia muscular de esta área del cuerpo, mejorando la apariencia física, la eficiencia en las actividades diarias y previniendo lesiones en los hombros y los codos al fortalecer estos músculos. También puede contribuir al equilibrio y la coordinación, mejorando el bienestar general del cuerpo.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://img.freepik.com/vector-gratis/chica-narcisista-feliz-mirandose-espejo-admirando-su-hermoso-reflejo-ilustracion-dibujos-animados_74855-14413.jpg?w=2000',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Abraza tus cualidades',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Es mucho mejor tomar consciencia de las habilidades que de los defectos. Saber que sí podemos hacer, porque son ellas quienes nos vayan a ayudar a conseguir cosas, tanto en los buenos momentos de la vida como en los malos.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://img.freepik.com/vector-gratis/pequena-nina-pie-escaleras-grabando-corazon-roto-personaje-dibujos-animados-femenino-sosteniendo-llave-bloquear-ilustracion-plana_74855-18774.jpg?w=2000',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Deja lo que te lastima',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'El pensamiento positivo no significa que ignoras las situaciones menos agradables de la vida. El pensamiento positivo solo significa que enfrentas lo desagradable de una manera más positiva y productiva. Crees que va a pasar lo mejor y no lo peor.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Stack(children: [
                    Image.network(
                      'https://us.123rf.com/450wm/yupiramos/yupiramos1709/yupiramos170902874/yupiramos170902874.jpg?ver=6',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Dulces sueños',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.6),
                        child: Text(
                          'Mantener un peso saludable. Reducir tu riesgo de problemas graves de salud, como diabetes y enfermedades del corazón. Disminuir el estrés y mejorar el estado de ánimo. Pensar con más claridad y desempeñarte mejor en los estudios y en el trabajo.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 5, 5, 5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
              options: CarouselOptions(
                height: 650.0,
                autoPlay: false,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
