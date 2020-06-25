import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/model/motoristas.dart';

class CadMotorista extends StatefulWidget {

  final Motorista motorista;
  CadMotorista(this.motorista);

  @override
  _CadMotoristaState createState() => _CadMotoristaState();
}

class _CadMotoristaState extends State<CadMotorista> {

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
  TextEditingController _periodoController;

  @override
  void initState() {
    super.initState();
    _nomeController = new TextEditingController(text: widget.motorista.nome);
    _senhaController = new TextEditingController(text: widget.motorista.senha);
    _emailController = new TextEditingController(text: widget.motorista.email);
    _nascimentoController = new TextEditingController(text: widget.motorista.nascimento);
    _telefoneController = new TextEditingController(text: widget.motorista.telefone);
    _cpfController = new TextEditingController(text: widget.motorista.cpf);
    _rgController = new TextEditingController(text: widget.motorista.rg);
    _enderecoController = new TextEditingController(text: widget.motorista.endereco);
    _bairroController = new TextEditingController(text: widget.motorista.bairro);
    _cidadeController = new TextEditingController(text: widget.motorista.cidade);
    _estadoController = new TextEditingController(text: widget.motorista.estado);
    _periodoController = new TextEditingController(text: widget.motorista.periodo);
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Motoristas"),
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
                            labelText: "* Nome Completo",
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
                          controller: _nascimentoController,
                          autofocus: true,
                          keyboardType: TextInputType.datetime,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Data de Nascimento",
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
                          controller: _cpfController,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* CPF",
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
                          controller: _rgController,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* RG",
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
                        
                        TextFormField(
                          validator: (value){
                            if (value.isEmpty) return "O campo é obrigatório.";
                            return null;
                          },
                          controller: _periodoController,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Período",
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
                              widget.motorista.id != null) ? Text('Atualizar') : Text('Cadastrar'),
                              textColor: Colors.white,
                            color: Colors.blue[800],
                            onPressed: () {
                              if (_formKey.currentState.validate()) {

                                if(widget.motorista.id != null) {
                                  db.collection("motoristas").document(widget.motorista.id).setData(
                                    {
                                      "nome": _nomeController.text,
                                      "senha": _senhaController.text,
                                      "email": _emailController.text,
                                      "nascimento": _nascimentoController.text,
                                      "telefone": _telefoneController.text,
                                      "cpf": _cpfController.text,
                                      "rg": _cpfController.text,
                                      "endereco": _enderecoController.text,
                                      "bairro": _bairroController.text,
                                      "cidade": _cidadeController.text,
                                      "estado": _estadoController.text,
                                      "periodo": _periodoController.text,
                                    }
                                  );
                                  Navigator.pop(context);
                                }else{
                                  db.collection("motoristas").document(widget.motorista.id).setData(
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
                                      "periodo": _periodoController.text,
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
