import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text(
            'gdjdx',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("textrecognition");
          },
        ),
      ),
    );
  }
}
