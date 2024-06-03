import 'package:doctor_appp/Screens/doctor_search.dart';
import 'package:doctor_appp/Screens/doctot_detels.dart';
import 'package:doctor_appp/Widgets/doctorsitem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_appp/Widgets/t_doctor.dart';
import 'package:doctor_appp/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class doctortaksas extends StatefulWidget {
  const doctortaksas({super.key});

  @override
  State<doctortaksas> createState() => _doctortaksasState();
}

class _doctortaksasState extends State<doctortaksas> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('تخسيس وتغذيه').get();

    setState(() {
      data.addAll(querySnapshot.docs);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تخسيس وتغذيه "),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child:T_doctor(
                image: 'assets/images/search.png',
                text: 'search',
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: DoctorSearch(doctors: data),
                  );
                })),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              return DoctorIstem(
                onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => detels(doctors: data[i])));},
                nameText: "${data[i][Kname]}",
                infoText: "${data[i][Kinfo]}",
                priceText: "${data[i][Kprice]}",
                locationText: "${data[i][Klocarion]}",
                ratingText: "${data[i][Krating]}",
              );
            },
          ),
        ),
      ]),
    );
  }
}
