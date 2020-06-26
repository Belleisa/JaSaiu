import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/model/user.dart';
import 'package:jasaiu/pages/senha.dart';
import 'package:jasaiu/services/auth.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {

  final Function toggleView;
  Login({this.toggleView});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  final db = Firestore.instance;
  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String senha = '';
  String error = '';

  TextEditingController _senhaController;
  TextEditingController _emailController;

   
     
  @override
  Widget build(BuildContext context) {
  
  final user = Provider.of<User>(context);
  print(user);
  
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
                      height: 30,
                    ),
    
                    SizedBox(
                      height: 40,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
    
                    SizedBox(
                      height: 30,
                    ),

                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[

                        TextFormField(
                          onChanged: (value) {
                            setState(() => email = value);
                          },
                          validator: (value){
                            if (value.isEmpty) return "O campo é obrigatório.";
                            //if (value.length < 5) return "O campo precisa ter mais de 4 caracteres.";
                            return null;
                          },
                          controller: _emailController,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* E-mail",
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
                          onChanged: (value) {
                            setState(() => senha = value);
                          },
                          validator: (value){
                            if (value.isEmpty) return "O campo é obrigatório.";
                            if (value.length < 8) return "O campo precisa ter 8 ou mais caracteres.";
                            return null;
                          },
                          controller: _senhaController,
                          autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Senha",
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
                            onPressed: () async {

                              if (_formKey.currentState.validate()) {
                                dynamic result = await _auth.signInWithEmailESenha(email, senha);
                                if (result == null){
                                  setState(() => error = 'Credenciais inválidas');
                                }
                                  //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Menu() ) );
                                            
                              }
                            },

                          ),
                        ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14),
                          ),
                          
                      ]
                    )
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

                  SizedBox(
                    height: 30,
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
                        widget.toggleView()
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
