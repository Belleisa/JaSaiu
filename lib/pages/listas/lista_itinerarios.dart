
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/cadastros/cad_itinerario.dart';
import '../../model/itinerarios.dart';



class ListaItinerarios extends StatefulWidget {
  ListaItinerarios({Key key}) : super(key: key);

  @override
  _ListaItinerariosState createState() => _ListaItinerariosState();
}

class _ListaItinerariosState extends State<ListaItinerarios> {
 
  List<Itinerario> items;
  var db = Firestore.instance;

  StreamSubscription<QuerySnapshot> itinerarioCadastro;

  @override
  void initState() {
    super.initState();

      items = List();
      itinerarioCadastro?.cancel();

      itinerarioCadastro =
      db.collection("itinerarios").snapshots().listen((snapshot){
          final List<Itinerario> itinerarios = snapshot.documents
            .map(
              (documentSnapshot) => Itinerario.fromMap(
                documentSnapshot.data, documentSnapshot.documentID
              ),    
            ).toList();

            setState(() {
              this.items = itinerarios;
            });

      });


  }

  @override
  void dispose() {
    itinerarioCadastro?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Itinerários"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: getListaItinerarios(),
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
                          title: Text(items[index].linha,
                            style: TextStyle(fontSize: 20)),
                          subtitle: Text(items[index].periodo,
                            style: TextStyle(fontSize: 20)),
                          leading: Column(
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.delete_forever),
                                onPressed: (){
                                  _deletaItinerario(context, documentos[index], index);
                                }
                              )
                            ],
                          ),
                          onTap: ()=> _navegarParaItinerario(context,items[index]),
                        
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
        onPressed: () => _criarNovoItinerario(context, Itinerario(null,'','','','',)),
      ),
    );
  }

  Stream<QuerySnapshot> getListaItinerarios() {
    return Firestore.instance.collection('itinerarios')
      .snapshots();
  }

  void _deletaItinerario(BuildContext context, DocumentSnapshot doc, int position) async {
    db.collection("itinerarios").document(doc.documentID).delete();

    setState( () {
        items.removeAt(position);
    });
  }

  void _navegarParaItinerario(BuildContext context, Itinerario itinerario) async {
    await Navigator.push(context,
      MaterialPageRoute(builder: (context) => CadItinerario(itinerario)),
    );
  }
  void _criarNovoItinerario(BuildContext context, Itinerario itinerario) async {
    await Navigator.push(context,
      MaterialPageRoute(builder: (context) => CadItinerario(Itinerario(null, '', '','',''))),
    );
  }
}
