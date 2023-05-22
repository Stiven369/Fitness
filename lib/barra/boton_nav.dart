import 'package:flutter/material.dart';


class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({super.key, required this.currentIndex});

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index =0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index=i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xffF6DEC8),
      selectedItemColor: Colors.blue[300],
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'Info.'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuración'
        ),
      ],
    );
  }
}