
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/cadastros/cad_motorista.dart';
import '../../model/motoristas.dart';



class ListaMotoristas extends StatefulWidget {
  ListaMotoristas({Key key}) : super(key: key);

  @override
  _ListaMotoristasState createState() => _ListaMotoristasState();
}

class _ListaMotoristasState extends State<ListaMotoristas> {
 
  List<Motorista> items;
  var db = Firestore.instance;

  StreamSubscription<QuerySnapshot> motoristaCadastro;

  @override
  void initState() {
    super.initState();

      items = List();
      motoristaCadastro?.cancel();

      motoristaCadastro =
      db.collection("motoristas").snapshots().listen((snapshot){
          final List<Motorista> motoristas = snapshot.documents
            .map(
              (documentSnapshot) => Motorista.fromMap(
                documentSnapshot.data, documentSnapshot.documentID
              ),    
            ).toList();

            setState(() {
              this.items = motoristas;
            });

      });


  }

  @override
  void dispose() {
    motoristaCadastro?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Motoristas"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: getListaMotoristas(),
              builder: (context, snapshot) {
                switch(snapshot.connectionState){
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                  default:
                    List<DocumentSnapshot> documentos =
                      snapshot.data.documents;
                    return ListView.builder(
                      itemCount: documentos.length,
                      itemBuilder: (context, index){
                        return ListTile(
                          title: Text(items[index].nome,
                            style: TextStyle(fontSize: 20)),
                          subtitle: Text(items[index].periodo,
                            style: TextStyle(fontSize: 20)),
                          leading: Column(
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.delete_forever),
                                onPressed: (){
                                  _deletaMotorista(context, documentos[index], index);
                                }
                              )
                            ],
                          ),
                          onTap: ()=> _navegarParaMotorista(context,items[index]),
                        
                        );
                      },
                    );
                }
              }
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[800],
        onPressed: () => _criarNovoMotorista(context, Motorista(null,'','','','','','','','','','','','')),
      
      ),
    );
  }

  Stream<QuerySnapshot> getListaMotoristas() {
    return Firestore.instance.collection('motoristas')
      .snapshots();
  }

  void _deletaMotorista(BuildContext context, DocumentSnapshot doc, int position) async {
    db.collection("motoristas").document(doc.documentID).delete();

    setState( () {
        items.removeAt(position);
    });
  }

  void _navegarParaMotorista(BuildContext context, Motorista motorista) async {
    await Navigator.push(context,
      MaterialPageRoute(builder: (context) => CadMotorista(motorista)),
    );
  }
  void _criarNovoMotorista(BuildContext context, Motorista motorista) async {
    await Navigator.push(context,
      MaterialPageRoute(builder: (context) => CadMotorista(Motorista(null, '', '','','','','','','','','','',''))),
    );
  }
}
