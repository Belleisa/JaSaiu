
import 'package:flutter/material.dart';
import 'package:jasaiu/pages/authenticate.dart';
import 'package:provider/provider.dart';

import 'menu.dart';
import 'model/user.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Menu();
    }
  }
}