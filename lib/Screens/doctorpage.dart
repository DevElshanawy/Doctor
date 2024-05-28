import '../Widgets/t_doctor.dart';
import 'package:flutter/material.dart';

class Doctorpage extends StatelessWidget {
  const Doctorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('doctor'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorasnan');
                },
                image: 'assets/images/f.png',
                text: "عيون",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorasnan');
                },
                image: 'assets/images/q.png',
                text: "اسنان",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctorgalda");
                },
                image: 'assets/images/r.png',
                text: "جلديه",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorasnan');
                },
                image: 'assets/images/ear.png',
                text: " انف واذن وحنجره  ",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorcalb');
                },
                image: 'assets/images/heart.png',
                text: "قلب",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctormokwasab');
                },
                image: 'assets/images/medicine.png',
                text: "مخ واعصاب",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctorbatna");
                },
                image: 'assets/images/stomach.png',
                text: "باطنه",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorazam');
                },
                image: 'assets/images/arthritis.png',
                text: "عظام",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed("doctornesawtawled");
                },
                image: 'assets/images/obstetrical.png',
                text: "نساءوتوليد",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorasnan');
                },
                image: 'assets/images/kidney.png',
                text: "كلى",
              ),
              T_doctor(
                onTap: () {
                  Navigator.of(context).pushNamed('doctoratfal');
                },
                image: 'assets/images/obstetrical.png',
                text: "اطفال وحديثى الولاده",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
