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
          child: ListView(
            children: [
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/f.png',
                text: "عيون",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/q.png',
                text: "اسنان",
              ),
              
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/r.png',
                text: "جلديه",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/ear.png',
                text: " انف واذن وحنجره  ",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/heart.png',
                text: "قلب",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/medicine.png',
                text: "مخ واعصاب",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/stomach.png',
                text: "باطنه",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/arthritis.png',
                text: "عظام",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/obstetrical.png',
                text: "نساءوتوليد",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/kidney.png',
                text: "كلى",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                image: 'assets/images/obstetrical.png',
                text: "نساءوتوليد",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
