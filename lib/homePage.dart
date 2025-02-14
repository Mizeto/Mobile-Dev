import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  void singnUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Loginned whit${user!.email}')),
        IconButton(onPressed: () {
          singnUserOut();
        }, 
        icon: Icon(Icons.logout))
      ],
    );
  }
}
