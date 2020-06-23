
import 'package:flutter/material.dart';
import './perfil.dart';
import './cad_onibus.dart';
import './cad_itinerario.dart';
import './cad_empresa.dart';



class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  int _selectedTab = 0;
  final _pageOptions = [
    Home(),
    CadEmpresa(),
    CadOnibus(),
    CadItinerario(),
    Perfil(),
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
                icon: Icon(Icons.notifications),
                title: Text('Alarme'),
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
                title: Text('Perfil'),
                backgroundColor: Colors.blue[800],
            ),
        ],
      ),
    );
  }
}
