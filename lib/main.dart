import 'package:flutter/material.dart';
import 'package:jasaiu/services/auth.dart';
import 'package:jasaiu/wrapper.dart';
import 'package:provider/provider.dart';

import 'model/user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),                  
        debugShowCheckedModeBanner: false,
      )
    );
  }

}