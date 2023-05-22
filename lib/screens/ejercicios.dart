import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Ejercicios extends StatefulWidget {
  const Ejercicios({super.key});

  @override
  State<Ejercicios> createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 109, 202, 187),
      appBar: new AppBar(
        title: Text('Rutinas'),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 1.0),
                colors: [
                  // Color.fromARGB(255, 123, 71, 213),
                  Color(0xffF6DEC8),
                  Color(0xffF6DEC8),
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
                      'https://pic.pikbest.com/02/24/02/24p888piCRCh.jpg!bw700',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                        padding: EdgeInsets.all(10),
                        color:
                            Color.fromARGB(95, 123, 186, 249).withOpacity(0.8),
                        child: Text(
                          'Acepta tu entorno',
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
                          'Concentra toda tu atención en la respiración, en la inhalación y la exhalación. Puedes mentalmente decirte "inspirar, espirar". Respira profundamente. Debes tratar de mantener tu mente en blanco y si en algún momento percibes que entran pensamientos que interrumpen la meditación, vuelve a centrarte en la respiración.',
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
                      'https://cdn.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1200,h_700/https://www.mensactiva.com/wp-content/uploads/2020/06/ansiedad-testimonio-01.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Calma tu ansiedad',
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
                          'El uso de aromas, por lo general de aceites esenciales provenientes de plantas, para manipular el estado de ánimo. La teoría es que inhalar ciertos compuestos puede afectar las mismas partes del cerebro que los ansiolíticos, pero sin los preocupantes efectos secundarios. Algunos aceites esenciales que son populares para la ansiedad incluyen lavanda, rosa, flor de cananga, manzanilla, jazmín, albahaca, salvia y bergamota.',
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
                      'https://img.freepik.com/vector-premium/smilling-feliz-personas-jovenes-bailando-fiesta-navidad-conjunto-personas-vector-dibujos-animados_53562-5176.jpg?w=2000',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Disfruta el momento',
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
                          'Vive y disfruta la vida al máximo inspirándote con esta gran colección de frases e imágenes, las cuales te motivarán a vivir tu propia vida y no la de alguien más, disfrutando cada momento como si fuera el único, al recordarte que la vida es una sola y nuestro tiempo en ella es limitado.',
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
                      'https://i.pinimg.com/originals/c9/ff/dd/c9ffdd61e8d63561d18ed89d2a6f0a94.jpg',
                      fit: BoxFit.cover,
                    ),
                    new Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(45, 0.1, 50, 262),
                            padding: EdgeInsets.all(10),
                            color: Color.fromARGB(95, 123, 186, 249)
                                .withOpacity(0.8),
                            child: Text(
                              'Clarifica tu mente',
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
                          'La mente es nuestra mejor herramienta en esta vida. Sin ella, no podemos realizar nada. Por esta razón, es realmente importante ocuparnos de que nuestra mente se encuentre sana, tranquila y en paz.',
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
                autoPlay: true,
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
