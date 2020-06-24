
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/cadastros/cad_onibus.dart';
import '../../model/onibus.dart';



class ListaOnibus extends StatefulWidget {
  ListaOnibus({Key key}) : super(key: key);

  @override
  _ListaOnibusState createState() => _ListaOnibusState();
}

class _ListaOnibusState extends State<ListaOnibus> {
 
  List<Onibus> items;
  var db = Firestore.instance;

  StreamSubscription<QuerySnapshot> onibusCadastro;

  @override
  void initState() {
    super.initState();

      items = List();
      onibusCadastro?.cancel();

      onibusCadastro =
      db.collection("onibus").snapshots().listen((snapshot){
          final List<Onibus> onibus = snapshot.documents
            .map(
              (documentSnapshot) => Onibus.fromMap(
                documentSnapshot.data, documentSnapshot.documentID
              ),    
            ).toList();

            setState(() {
              this.items = onibus;
            });

      });


  }

  @override
  void dispose() {
    onibusCadastro?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Ônibus"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: getListaOnibus(),
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
                          title: Text(items[index].modelo,
                            style: TextStyle(fontSize: 20)),
                          subtitle: Text(items[index].placa,
                            style: TextStyle(fontSize: 20)),
                          leading: Column(
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.delete_forever),
                                onPressed: (){
                                  _deletaOnibus(context, documentos[index], index);
                                }
                              )
                            ],
                          )
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
        onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CadOnibus() ))
        },
      ),
    );
  }

  Stream<QuerySnapshot> getListaOnibus() {
    return Firestore.instance.collection('onibus')
      .snapshots();
  }

  void _deletaOnibus(BuildContext context, DocumentSnapshot doc, int position) async {
    db.collection("onibus").document(doc.documentID).delete();

    setState( () {
        items.removeAt(position);
    });
  }
}
