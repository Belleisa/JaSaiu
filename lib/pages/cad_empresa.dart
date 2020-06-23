import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/escolha.dart';
import 'package:jasaiu/pages/home.dart';

class CadEmpresa extends StatefulWidget {
  @override
  _CadEmpresaState createState() => _CadEmpresaState();
}

class _CadEmpresaState extends State<CadEmpresa> {
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

            child: SingleChildScrollView(
              
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
                      labelText: "Nome da Empresa",
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
  /*
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
                      labelText: "CNPJ",
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
  */
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
                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home() ) )
                      },

                    ),
                  ),

                
                  SizedBox(
                    height: 20,
                  ),
                  
                  Container(

                    height: 40,
                    alignment: Alignment.center,
                    child: FlatButton(
                      child: Text(
                        "Cancelar",
                        textAlign: TextAlign.center,
                      ),

                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Escolha() ) )
                      }, 
                      
                    ),

                  ),

                ],
              )
            )
          )
        )
      )
      ]
    );
    
  }
}
