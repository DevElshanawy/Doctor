import 'package:doctor_appp/Widgets/t_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class doctorpage extends StatelessWidget {
  const doctorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doctor'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              T_doctor(),
              T_doctor(),
              T_doctor(),
              
              
            ],
          ),
        ),
      ),
    );
  }
}

