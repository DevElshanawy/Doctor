import 'package:doctor_appp/Screens/doctot_detels.dart';
import 'package:doctor_appp/Widgets/doctorsitem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_appp/constant.dart';
import 'package:flutter/material.dart';

class doctorgalda extends StatefulWidget {
  const doctorgalda({super.key});

  @override
  State<doctorgalda> createState() => _doctorgaldaState();
}

class _doctorgaldaState extends State<doctorgalda> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('ddddd').get();

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
        title: Text(" جلديه"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: 'search',
                suffixIcon: Icon(Icons.search, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i) {
                return DoctorIstem(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => detels(product: data[i])));
                  },
                  nameText: "${data[i][Kname]}",
                  infoText: "${data[i][Kinfo]}",
                  priceText: "${data[i][Kprice]}",
                  locationText: "${data[i][Klocarion]}",
                  ratingText: "${data[i][Krating]}",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
