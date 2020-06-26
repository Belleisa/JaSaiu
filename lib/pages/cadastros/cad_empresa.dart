import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/menu.dart';
import 'package:jasaiu/pages/escolha.dart';
import 'package:jasaiu/services/auth.dart';
import '../../model/empresa.dart';

class CadEmpresa extends StatefulWidget {

  final Empresa empresa;
  CadEmpresa(this.empresa);

  @override
  _CadEmpresaState createState() => _CadEmpresaState();
}

class _CadEmpresaState extends State<CadEmpresa> {
  
  final db = Firestore.instance;

  TextEditingController _nomeController;
  TextEditingController _senhaController;
  TextEditingController _emailController;
  TextEditingController _telefoneController;
  TextEditingController _cnpjController;
  TextEditingController _enderecoController;
  TextEditingController _bairroController;
  TextEditingController _cidadeController;
  TextEditingController _estadoController;

  @override
  void initState() {
    super.initState();
    _nomeController = new TextEditingController(text: widget.empresa.nome);
    _senhaController = new TextEditingController(text: widget.empresa.senha);
    _emailController = new TextEditingController(text: widget.empresa.email);
    _telefoneController = new TextEditingController(text: widget.empresa.telefone);
    _cnpjController = new TextEditingController(text: widget.empresa.cnpj);
    _enderecoController = new TextEditingController(text: widget.empresa.endereco);
    _bairroController = new TextEditingController(text: widget.empresa.bairro);
    _cidadeController = new TextEditingController(text: widget.empresa.cidade);
    _estadoController = new TextEditingController(text: widget.empresa.estado);
  }

  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String senha = '';
  String error = '';

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
                      height: 44,
                      child: Text(
                        "Cadastro de Empresa",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Form(
                      key: _formKey,
                        child: Column(
                          children: <Widget>[

                          TextFormField(
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              //if (value.length < 5) return "O campo precisa ter mais de 4 caracteres.";
                              return null;
                            },
                            controller: _nomeController,
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),

                            decoration: InputDecoration(
                              labelText: "* Nome da Empresa",
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

                          TextFormField(
                          onChanged: (value) {
                            setState(() => email = value);
                          },
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              return null;
                            },
                            controller: _emailController,
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
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
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              return null;
                            },
                            controller: _telefoneController,
                            autofocus: true,
                            keyboardType: TextInputType.phone,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),

                            decoration: InputDecoration(
                              labelText: "* Número de Telefone",
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
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              return null;
                            },
                            controller: _cnpjController,
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),

                            decoration: InputDecoration(
                              labelText: "* CNPJ",
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
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              return null;
                            },
                            controller: _enderecoController,
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),

                            decoration: InputDecoration(
                              labelText: "* Endereço",
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
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              return null;
                            },
                            controller: _bairroController,
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),

                            decoration: InputDecoration(
                              labelText: "* Bairro",
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
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              return null;
                            },
                            controller: _cidadeController,
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),

                            decoration: InputDecoration(
                              labelText: "* Cidade",
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
                            validator: (value){
                              if (value.isEmpty) return "O campo é obrigatório.";
                              return null;
                            },
                            controller: _estadoController,
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),

                            decoration: InputDecoration(
                              labelText: "* Estado",
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

                              
                              child: (
                                widget.empresa.id != null) ? Text('Atualizar') : Text('Cadastrar'),
                                textColor: Colors.white,
                              color: Colors.blue[800],
                              onPressed: () async {

                              if (_formKey.currentState.validate()) {
                                dynamic result = await _auth.registerWithEmailESenha(email, senha);
                                if (result == null){
                                  setState(() => error = 'Informe email válido');
                                } else{
                                   await _auth.signInWithEmailESenha(email, senha);

                                }
                                  db.collection("empresas").document(widget.empresa.id).setData(
                                    {
                                      "nome": _nomeController.text,
                                      "senha": _senhaController.text,
                                      "email": _emailController.text,
                                      "telefone": _telefoneController.text,
                                      "cnpj": _cnpjController.text,
                                      "endereco": _enderecoController.text,
                                      "bairro": _bairroController.text,
                                      "cidade": _cidadeController.text,
                                      "estado": _estadoController.text,
                                    }
                                  );
                                  _criarNovaEmpresa(context, Empresa(null,'','','','','','','','',''));
                                }
                                  //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Menu() ) );
                              
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
                          
                          SizedBox(
                            height: 40,
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

                          SizedBox(
                          height: 20,
                          ),
                          


                  SizedBox(
                    height: 20,
                  ),
                  
                        ],
                      )
                    )
                  ]
                )
              )
            ) 
          )
        )
      ]
    );
    
  }
  void _criarNovaEmpresa(BuildContext context, Empresa empresa) async {
    await Navigator.push(context,
      MaterialPageRoute(builder: (context) => CadEmpresa(Empresa(null, '', '','','','','','','',''))),
    );
  }
}
