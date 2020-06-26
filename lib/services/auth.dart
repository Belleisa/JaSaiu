import 'package:firebase_auth/firebase_auth.dart';
import 'package:jasaiu/model/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // cria um usuário objeto baseado no FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // auth muda o stream do usuário
  Stream<User> get user {
    return _auth.onAuthStateChanged
  .map(_userFromFirebaseUser);
  }


  // logar anonimamente
  Future signInAnon() async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  } 

  // Login com email e senha
  Future signInWithEmailESenha(String email, String senha) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: senha);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // registrar email e senha
  Future registerWithEmailESenha(String email, String senha) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: senha);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sair
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }
  }

}