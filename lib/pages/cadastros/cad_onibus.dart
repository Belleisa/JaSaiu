import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/model/onibus.dart';

class CadOnibus extends StatefulWidget {

  final Onibus onibus;
  CadOnibus(this.onibus);

  @override
  _CadOnibusState createState() => _CadOnibusState();
}

class _CadOnibusState extends State<CadOnibus> {

  final db = Firestore.instance;

  TextEditingController _nomeController;
  TextEditingController _emailController;
  TextEditingController _telefoneController;
  TextEditingController _marcaController;
  TextEditingController _modeloController;
  TextEditingController _placaController;
  TextEditingController _cidadeController;
  TextEditingController _estadoController;

  @override
  void initState() {
    super.initState();
    _nomeController = new TextEditingController(text: widget.onibus.nome);
    _emailController = new TextEditingController(text: widget.onibus.email);
    _telefoneController = new TextEditingController(text: widget.onibus.telefone);
    _marcaController = new TextEditingController(text: widget.onibus.marca);
    _modeloController = new TextEditingController(text: widget.onibus.modelo);
    _placaController = new TextEditingController(text: widget.onibus.placa);
    _cidadeController = new TextEditingController(text: widget.onibus.cidade);
    _estadoController = new TextEditingController(text: widget.onibus.estado);
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Onibus"),
          centerTitle: true,
          backgroundColor: Colors.blue[800],
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
                            labelText: "* Nome Completo do Dono",
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
                            if (value.length < 8) return "O campo precisa ter 8 ou mais caracteres.";
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
                            labelText: "* E-mail para Contato",
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
                            //if (value.length < 5) return "O campo precisa ter mais de 4 caracteres.";
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
                          controller: _marcaController,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Marca",
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
                          controller: _modeloController,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Modelo",
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
                          controller: _placaController,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Placa",
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
                              widget.onibus.id != null) ? Text('Atualizar') : Text('Cadastrar'),
                              textColor: Colors.white,
                            color: Colors.blue[800],
                            onPressed: () {
                              if (_formKey.currentState.validate()) {

                                if(widget.onibus.id != null) {
                                  db.collection("onibus").document(widget.onibus.id).setData(
                                    {
                                      "nome": _nomeController.text,
                                      "email": _emailController.text,
                                      "telefone": _telefoneController.text,
                                      "marca": _marcaController.text,
                                      "modelo": _modeloController.text,
                                      "placa": _placaController.text,
                                      "cidade": _cidadeController.text,
                                      "estado": _estadoController.text,
                                    }
                                  );
                                  Navigator.pop(context);
                                }else{
                                  db.collection("onibus").document(widget.onibus.id).setData(
                                    {
                                      "nome": _nomeController.text,
                                      "email": _emailController.text,
                                      "telefone": _telefoneController.text,
                                      "marca": _marcaController.text,
                                      "modelo": _modeloController.text,
                                      "placa": _placaController.text,
                                      "cidade": _cidadeController.text,
                                      "estado": _estadoController.text,
                                    }
                                  );
                                  Navigator.pop(context);
                                }
                              }
                            },
                          ),
                        ),

                        SizedBox(
                          height: 50,
                        ),
                      ],
                    )
                  )
                ]
              )
            )
          )
        )
      );
  }
}
