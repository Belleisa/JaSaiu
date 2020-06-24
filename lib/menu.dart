
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/cadastros/cad_aluno.dart';
import 'package:jasaiu/pages/cadastros/cad_motorista.dart';
import 'package:jasaiu/pages/cadastros/cad_onibus.dart';
import 'package:jasaiu/pages/cadastros/cad_itinerario.dart';
import 'package:jasaiu/pages/home.dart';



class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
 
  int _selectedTab = 0;
  final _pageOptions = [
    Home(),
    CadMotorista(),
    CadOnibus(),
    CadItinerario(),
    CadAluno(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedTab],

      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
              _selectedTab = index;
          });
        },
        items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                title: Text('Home'),
                backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline),
                title: Text('Motoristas'),
                backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_bus),
                title: Text('Ônibus'),
                backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.map),
                title: Text('Itinerários'),
                backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Alunos'),
                backgroundColor: Colors.blue[800],
            ),
        ],
      ),
    );
  }
}
