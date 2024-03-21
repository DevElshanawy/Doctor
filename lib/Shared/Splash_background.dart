// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
              colors: [
                Colors.blue.shade100,
                Colors.white,
                Colors.white,
                Colors.green.shade100,
              ]),
        ),
        child: child);
  }
}
