import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/cadastros/cad_empresa.dart';
import 'package:jasaiu/pages/login.dart';

class Escolha extends StatefulWidget {
  @override
  _EscolhaState createState() => _EscolhaState();
}

class _EscolhaState extends State<Escolha> {
  @override
  Widget build(BuildContext context) {
    return Stack( // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background-branco.jpg"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
      Scaffold(
        body: Container (
          
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),

          child: Center (

            child: Column(
      
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/logo_JaSaiu.png")
                ),

                SizedBox(
                  height: 20,
                ),

                ButtonTheme(

                  height: 60,
                  child: RaisedButton( 

                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    
                    color: Colors.blue[800],
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Login() ) )
                    },

                  ),
                ),
                
                SizedBox(
                  height: 20,
                ),

                ButtonTheme(

                  height: 60,
                  child: RaisedButton( 

                    child: Text(
                      "Cadastrar minha empresa",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    
                    color: Colors.blue[800],
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CadEmpresa(null) ) )
                    },

                  ),
                ),

              ],
            )
          )
        )
      )
      ]
    );
    
  }
}
