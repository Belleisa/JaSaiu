import 'package:jasaiu/model/empresa.dart';
import 'package:jasaiu/pages/cadastros/cad_empresa.dart';
import 'package:jasaiu/pages/escolha.dart';

import './login.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
    
  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  } 

  @override
  Widget build(BuildContext context) {

    if (showSignIn) {
      return Login(toggleView: toggleView);
    } else{
      return Escolha(toggleView: toggleView);
    }
  }
}