//import 'package:flutter/material.dart';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  //Google sig in
  signInWithGoogle() async{
  //
  final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
  //
  final GoogleSignInAuthentication gAuth = await gUser!.authentication;
  //Crear una nueva credencial para usuario
  final credential = GoogleAuthProvider.credential(
    accessToken: gAuth.accessToken,
    idToken: gAuth.idToken,
  );
  //
  return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

