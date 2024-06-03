import 'package:doctor_appp/Widgets/t_doctor.dart';
import 'package:flutter/material.dart';

class bloodpage extends StatelessWidget {
  const bloodpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('بنوك الدم ومراكز غسيل الكلى'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('blood');
                },
                image: 'assets/images/blood-bag.png',
                text: "بنوك الدم",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('cala');
                },
                image: 'assets/images/dialysis.png',
                text: "مراكز غسيل الكلى",
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}