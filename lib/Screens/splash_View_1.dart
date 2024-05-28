// ignore_for_file: file_names

import 'package:doctor_appp/Helper/Splash_Texts.dart';
import 'package:doctor_appp/Widgets/Splash_View_Body.dart';
import 'package:flutter/material.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        title: SplashText.splshViewTitle_1,
        subtitle: SplashText.splshViewSubtitle_1,
        image: SplashText.splshViewImage_1,
        onTap: onTap,
        onPressed: () {},
      ),
    );
  }
}
