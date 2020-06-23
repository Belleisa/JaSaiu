import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadItinerario extends StatefulWidget {
  @override
  _CadItinerarioState createState() => _CadItinerarioState();
}

class _CadItinerarioState extends State<CadItinerario> {
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
                    labelText: "Período",
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
                  keyboardType: TextInputType.datetime,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Hora da Saída",
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
                  keyboardType: TextInputType.datetime,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Hora da Volta",
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
                 
                Text(
                  "Trajeto da Ida",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25,

                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                 
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Ponto de Referência/Bairro",
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
                 
                Text(
                  "Trajeto da Volta",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25,

                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                 
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Ponto de Referência/Bairro",
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
                
                ButtonTheme(

                  height: 60,
                  child: RaisedButton( 

                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    
                    color: Colors.blue[800],
                    onPressed: () => {},

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
