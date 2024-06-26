// ignore_for_file: file_names

import 'package:doctor_appp/Helper/cache_helper.dart';
import 'package:doctor_appp/Screens/auth/screens/login.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(
          0xff407BFF,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        minimumSize: const Size(295, 54),
      ),
      onPressed: () async {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
        await CacheHelper().saveData(key: 'isOnBoardingVisited', value: true);
      },
      child: const Text(
        'Get Started',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}