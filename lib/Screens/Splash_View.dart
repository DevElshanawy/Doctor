// ignore_for_file: file_names

import 'package:doctor_appp/Helper/fade_animation.dart';
import 'package:doctor_appp/Screens/Smooth_Indicator.dart';
import 'package:doctor_appp/Shared/Splash_background.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashView1State();
}

class _SplashView1State extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Size mq;
  bool _isAnimated = false;

  @override
  void initState() {
    super.initState();
    // Start the animation after a short delay
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isAnimated = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SplashBackground(
        child: Stack(
          children: [
            AnimatedPositioned(
              top: _isAnimated ? mq.height * 0.2 : mq.height * -0.25,
              duration: const Duration(milliseconds: 1900),
              onEnd: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SmoothIndicator(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/test.png',
                height: mq.height * 0.35,
              ),
            ),
            Positioned(
              bottom: mq.height * 0.4,
              left: mq.width * 0.4,
              child: const FadeAnimation(
                delay: 2,
                child: Text(
                  'Doctor',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
