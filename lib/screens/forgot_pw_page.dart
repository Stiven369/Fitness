import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController=TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async{
    try{
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: _emailController.text.trim());
      showDialog(
        context: context,
       builder: (context){
        return AlertDialog(
          content: Text(
            'Tu link de reseteo de contraseña a sido enviado con exito! Revisa tu correo electrónico'
          ),
        );
       });
    } on FirebaseAuthException catch (e){
      print(e);
      showDialog(
        context: context,
       builder: (context){
        return AlertDialog(
          content: Text(
            e.message.toString()
          ),
        );
       });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Ingresa tu Email y nosotros te enviaremos un link para resetear tu contraseña',
            textAlign: TextAlign.center,),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '@e-mail'
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              onPressed: passwordReset,
              child: Text('Resetear contraseña'),
              color: Colors.blueAccent,
            ),
        ],
      ),
    );
  }
}