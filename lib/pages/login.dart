import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/perfil.dart';
import 'package:jasaiu/pages/senha.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "CPF ou e-mail",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),

                ),

                SizedBox(
                  height: 20,
                ),

                TextFormField(

                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),

                ),

                SizedBox(
                  height: 20,
                ),

                ButtonTheme(

                  height: 60,
                  child: RaisedButton( 

                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    
                    color: Colors.blue[800],
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Perfil() ) )
                    },

                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                
                Container(

                  height: 40,
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text(
                      "Recuperar Senha",
                      textAlign: TextAlign.right,
                    ),

                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Senha() ) )
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
