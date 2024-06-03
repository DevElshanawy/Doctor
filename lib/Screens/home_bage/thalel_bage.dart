import 'package:doctor_appp/Widgets/t_doctor.dart';
import 'package:flutter/material.dart';

class thalelpage extends StatelessWidget {
  const thalelpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('معامل اشاعه وتحاليل'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('thalel');
                },
                image: 'assets/images/microscope.png',
                text: "تحاليل",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('asha');
                },
                image: 'assets/images/radiology.png',
                text: "اشاعات",
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}