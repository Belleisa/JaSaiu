import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/alunos.dart';

class CadAluno extends StatefulWidget {

  final Aluno aluno;
  CadAluno(this.aluno);

  @override
  _CadAlunoState createState() => _CadAlunoState();
}

class _CadAlunoState extends State<CadAluno> {

  final db = Firestore.instance;

  TextEditingController _nomeController;
  TextEditingController _senhaController;
  TextEditingController _emailController;
  TextEditingController _nascimentoController;
  TextEditingController _telefoneController;
  TextEditingController _cpfController;
  TextEditingController _rgController;
  TextEditingController _enderecoController;
  TextEditingController _bairroController;
  TextEditingController _cidadeController;
  TextEditingController _estadoController;
  TextEditingController _faculdadeController;
  TextEditingController _faculcityController;
  TextEditingController _periodoController;

  @override
  void initState() {
    super.initState();
    _nomeController = new TextEditingController(text: widget.aluno.nome);
    _senhaController = new TextEditingController(text: widget.aluno.senha);
    _emailController = new TextEditingController(text: widget.aluno.email);
    _nascimentoController = new TextEditingController(text: widget.aluno.nascimento);
    _telefoneController = new TextEditingController(text: widget.aluno.telefone);
    _cpfController = new TextEditingController(text: widget.aluno.cpf);
    _rgController = new TextEditingController(text: widget.aluno.rg);
    _enderecoController = new TextEditingController(text: widget.aluno.endereco);
    _bairroController = new TextEditingController(text: widget.aluno.bairro);
    _cidadeController = new TextEditingController(text: widget.aluno.cidade);
    _estadoController = new TextEditingController(text: widget.aluno.estado);
    _faculdadeController = new TextEditingController(text: widget.aluno.faculdade);
    _faculcityController = new TextEditingController(text: widget.aluno.faculcity);
    _periodoController = new TextEditingController(text: widget.aluno.periodo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Alunos"),
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

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: _nomeController,
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

                    controller: _senhaController,
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
                    controller: _emailController,
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
                    controller: _nascimentoController,
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
                    controller: _telefoneController,
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
                    controller: _cpfController,
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
                    controller: _rgController,
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
                    controller: _enderecoController,
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
                    controller: _bairroController,
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
                    controller: _cidadeController,
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
                    controller: _estadoController,
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
                  
                  TextFormField(
                    controller: _faculdadeController,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),

                    decoration: InputDecoration(
                      labelText: "Faculdade",
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
                    controller: _faculcityController,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),

                    decoration: InputDecoration(
                      labelText: "Cidade da Faculdade",
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
                    controller: _periodoController,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),

                    decoration: InputDecoration(
                      labelText: "Período que Estuda",
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
                        widget.aluno.id != null) ? Text('Atualizar') : Text('Cadastrar'),
                        textColor: Colors.white,
                      color: Colors.blue[800],
                      onPressed: () {

                        if(widget.aluno.id != null) {
                          db.collection("alunos").document(widget.aluno.id).setData(
                            {
                              "nome": _nomeController.text,
                              "senha": _senhaController.text,
                              "email": _emailController.text,
                              "nascimento": _nascimentoController.text,
                              "telefone": _telefoneController.text,
                              "cpf": _cpfController.text,
                              "rg": _rgController.text,
                              "endereco": _enderecoController.text,
                              "bairro": _bairroController.text,
                              "cidade": _cidadeController.text,
                              "estado": _estadoController.text,
                              "faculdade": _faculdadeController.text,
                              "faculcity": _faculcityController.text,
                              "periodo": _periodoController.text,
                            }
                          );
                          Navigator.pop(context);
                        }else{
                          db.collection("alunos").document(widget.aluno.id).setData(
                            {
                              "nome": _nomeController.text,
                              "senha": _senhaController.text,
                              "email": _emailController.text,
                              "nascimento": _nascimentoController.text,
                              "telefone": _telefoneController.text,
                              "cpf": _cpfController.text,
                              "rg": _rgController.text,
                              "endereco": _enderecoController.text,
                              "bairro": _bairroController.text,
                              "cidade": _cidadeController.text,
                              "estado": _estadoController.text,
                              "faculdade": _faculdadeController.text,
                              "faculcity": _faculcityController.text,
                              "periodo": _periodoController.text,
                            }
                          );
                          Navigator.pop(context);
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
          )
        )
      );
      
    
    
  }
}
