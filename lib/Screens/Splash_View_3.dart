
import 'package:doctor_appp/Helper/Splash_Texts.dart';
import 'package:doctor_appp/Shared/Splash_background.dart';
import 'package:doctor_appp/Widgets/Splash_View_Body.dart';
import 'package:flutter/material.dart';

class SplashView3 extends StatelessWidget {
  const SplashView3({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBackground(
        child: SplashViewBody(
          title: SplashText.splshViewTitle_3,
          subtitle: SplashText.splshViewSubtitle_3,
          image: SplashText.splshViewImage_3,
          onTap: onTap,
          onPressed: () {},
        ),
      ),
    );
  }
}
