
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/cadastros/cad_aluno.dart';
import '../../model/alunos.dart';



class ListaAlunos extends StatefulWidget {
  ListaAlunos({Key key}) : super(key: key);

  @override
  _ListaAlunosState createState() => _ListaAlunosState();
}

class _ListaAlunosState extends State<ListaAlunos> {
 
  List<Aluno> items;
  var db = Firestore.instance;

  StreamSubscription<QuerySnapshot> alunoCadastro;

  @override
  void initState() {
    super.initState();

      items = List();
      alunoCadastro?.cancel();

      alunoCadastro =
      db.collection("alunos").snapshots().listen((snapshot){
          final List<Aluno> alunos = snapshot.documents
            .map(
              (documentSnapshot) => Aluno.fromMap(
                documentSnapshot.data, documentSnapshot.documentID
              ),    
            ).toList();

            setState(() {
              this.items = alunos;
            });

      });


  }

  @override
  void dispose() {
    alunoCadastro?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Alunos"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: getListaAlunos(),
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
                                  _deletaAluno(context, documentos[index], index);
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
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CadAluno() ) )
        },
      ),
    );
  }

  Stream<QuerySnapshot> getListaAlunos() {
    return Firestore.instance.collection('alunos')
      .snapshots();
  }

  void _deletaAluno(BuildContext context, DocumentSnapshot doc, int position) async {
    db.collection("alunos").document(doc.documentID).delete();

    setState( () {
        items.removeAt(position);
    });
  }
}
