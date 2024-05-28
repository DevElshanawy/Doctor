// ignore_for_file: file_names

import 'package:doctor_appp/Widgets/custom_button.dart';
import 'package:doctor_appp/main.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
    this.onTap,
    required this.title,
    required this.subtitle,
    required this.image,
    this.onPressed,
    this.alignment = Alignment.centerLeft,
  });
  final void Function()? onTap;
  final String title;
  final String subtitle;
  final String image;
  final void Function()? onPressed;
  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: alignment ?? Alignment.centerLeft,
        child: Image.asset(
          image,
          height: mq.height * 0.48,
        ),
      ),
      SizedBox(
        height: mq.height * .075,
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: mq.height * .01),
      SizedBox(
        height: 70,
        width: 289,
        child: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: mq.height * .085),
      CustomButton(onPressed: onPressed),
      SizedBox(height: mq.height * .037),
      InkWell(
        onTap: onTap,
        child: const Text(
          'Skip',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    ]);
  }
}
