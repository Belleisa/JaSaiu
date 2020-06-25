import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/model/itinerarios.dart';

class CadItinerario extends StatefulWidget {

  final Itinerario itinerario;
  CadItinerario(this.itinerario);

  @override
  _CadItinerarioState createState() => _CadItinerarioState();
}

class _CadItinerarioState extends State<CadItinerario> {

  final db = Firestore.instance;

  TextEditingController _linhaController;
  TextEditingController _periodoController;
  TextEditingController _horaidaController;
  TextEditingController _horavoltaController;

  @override
  void initState() {
    super.initState();
    _linhaController = new TextEditingController(text: widget.itinerario.linha);
    _periodoController = new TextEditingController(text: widget.itinerario.periodo);
    _horaidaController = new TextEditingController(text: widget.itinerario.horaida);
    _horavoltaController = new TextEditingController(text: widget.itinerario.horavolta);
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Itinerários"),
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
                          controller: _linhaController,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Linha ",
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
                        
                        TextFormField(
                          validator: (value){
                            if (value.isEmpty) return "O campo é obrigatório.";
                            //if (value.length < 5) return "O campo precisa ter mais de 4 caracteres.";
                            return null;
                          },
                          controller: _horaidaController,
                          autofocus: true,
                          keyboardType: TextInputType.datetime,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Hora da Saída",
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
                          controller: _horavoltaController,
                          autofocus: true,
                          keyboardType: TextInputType.datetime,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),

                          decoration: InputDecoration(
                            labelText: "* Hora da Volta",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),

                        ),
                        /*
                        SizedBox(
                          height: 40,
                        ),
                        
                        Text(
                          "Trajeto da Ida",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            
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
                          height: 40,
                        ),
                        
                        Text(
                          "Trajeto da Volta",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,

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
                        */
                              

                        SizedBox(
                          height: 20,
                        ),
                        
                        ButtonTheme(

                          height: 60,
                          child: RaisedButton( 

                            child: (
                              widget.itinerario.id != null) ? Text('Atualizar') : Text('Cadastrar'),
                              textColor: Colors.white,
                            color: Colors.blue[800],
                            onPressed: () {

                              if (_formKey.currentState.validate()) {

                                if(widget.itinerario.id != null) {
                                  db.collection("itinerarios").document(widget.itinerario.id).setData(
                                    {
                                      "linha": _linhaController.text,
                                      "periodo": _periodoController.text,
                                      "horaida": _horaidaController.text,
                                      "horavolta": _horavoltaController.text,
                                    }
                                  );
                                  Navigator.pop(context);
                                }else{
                                  db.collection("itinerarios").document(widget.itinerario.id).setData(
                                    {
                                      "linha": _linhaController.text,
                                      "periodo": _periodoController.text,
                                      "horaida": _horaidaController.text,
                                      "horavolta": _horavoltaController.text,
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
