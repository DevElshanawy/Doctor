import '../doctot_detels.dart';
import '../../Widgets/doctorsitem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constant.dart';
import 'package:flutter/material.dart';

class Doctormokwasab extends StatefulWidget {
  const Doctormokwasab({super.key});

  @override
  State<Doctormokwasab> createState() => _DoctormokwasabState();
}

class _DoctormokwasabState extends State<Doctormokwasab> {
  List data = [];
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('مخ واعصاب').get();

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
        title: const Text("مخ واعصاب"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'search',
              suffixIcon: const Icon(Icons.search, color: Colors.black),
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
                          builder: (context) => Detels(product: data[i])));
                },
                nameText: "${data[i][kname]}",
                infoText: "${data[i][kinfo]}",
                priceText: "${data[i][kprice]}",
                locationText: "${data[i][klocarion]}",
                ratingText: "${data[i][krating]}",
              );
            },
          ),
        ),
      ]),
    );
  }
}
