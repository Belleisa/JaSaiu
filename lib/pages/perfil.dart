import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/services/auth.dart';
class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  
  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.power_settings_new),
              label: Text(
                "Logout"
              ),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ]
        ),
        body: Container (
          
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),

          child: Center (
            child: SingleChildScrollView(
              child: Column(
        
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  

                
                ],
              )
            )
          )
        )
      );
      
    
    
  }
}
