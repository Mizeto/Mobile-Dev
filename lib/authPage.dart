import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasere/homePage.dart';
import 'package:firebasere/loginPage.dart';
import 'package:flutter/material.dart';

class authPage extends StatelessWidget {
  const authPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Firebase Auth', style: TextStyle(color: Colors.white)),
        ),
        actions: [Icon(Icons.help, color: Colors.white)],
        backgroundColor: Color.fromRGBO(40, 84, 48, 1),
      ),
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context,snapshot){
          if (snapshot.hasData){
            //Logged in
            return homePage();
          }else{
            //Not loging
            return loginPage();
          }
        }),
    );
  }
}
