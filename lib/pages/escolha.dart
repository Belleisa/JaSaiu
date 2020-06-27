
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
                top: 40,
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
                      height: 50,
                    ),
    
                    SizedBox(
                      height: 30,
                      child: Text(
                        "Já Saiu?",
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
    
                    SizedBox(
                      height: 50,
                    ),
    /*
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
                        widget.toggleView()

                        },
    
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
                          "Cadastrar minha empresa",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        
                        color: Colors.blue[800],
                        onPressed: () => {
                         // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CadEmpresa(Empresa(null, '','','','','','','','','')) ) )
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
