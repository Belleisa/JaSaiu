import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadMotorista extends StatefulWidget {
  @override
  _CadMotoristaState createState() => _CadMotoristaState();
}

class _CadMotoristaState extends State<CadMotorista> {
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
                    labelText: "Nome Completo",
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

                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "E-mail",
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
                    labelText: "Data de Nascimento",
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
                  keyboardType: TextInputType.phone,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Número de Telefone",
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
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "CPF",
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
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "RG",
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
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Endereço",
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
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Bairro",
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
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Cidade",
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
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(
                    labelText: "Estado",
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
