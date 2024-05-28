import 'package:doctor_appp/Screens/auth/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 200),
        TextButton(
          onPressed: () async {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
              (route) => false,
            );
            await FirebaseAuth.instance.signOut();
          },
          child: const Text(
            "Sign Out",
          ),
        ),
      ],
    );
  }
}
