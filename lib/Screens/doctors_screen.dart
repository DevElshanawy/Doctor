import 'package:doctor_appp/Widgets/doctorsitem.dart';
import 'package:flutter/material.dart';

class doctors extends StatefulWidget {
  const doctors({super.key});

  @override
  State<doctors> createState() => _doctorsState();
}

class _doctorsState extends State<doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("دكاتره اسنان"),
      ),
      body: ListView(
        children: [
          DoctorIstem(),
          DoctorIstem(),
          DoctorIstem(),
          DoctorIstem(),
        ],
      ),
    );
  }
}
