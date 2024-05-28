import '../doctot_detels.dart';
import '../../Widgets/doctorsitem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constant.dart';
import 'package:flutter/material.dart';

class Doctorgalda extends StatefulWidget {
  const Doctorgalda({super.key});

  @override
  State<Doctorgalda> createState() => _DoctorgaldaState();
}

class _DoctorgaldaState extends State<Doctorgalda> {
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
        title: const Text(" جلديه"),
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
        ],
      ),
    );
  }
}
