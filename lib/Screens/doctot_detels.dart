import 'package:cloud_firestore/cloud_firestore.dart';
import '../Widgets/doctorsitem.dart';
import '../constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detels extends StatefulWidget {
  QueryDocumentSnapshot product;
  Detels({super.key, required this.product});

  @override
  State<Detels> createState() => _DetelsState();
}

class _DetelsState extends State<Detels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("بيانات الدكتور"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey[300],
                    backgroundImage:
                        const AssetImage('assets/images/doctor.png'),
                  ),
                ),
                Center(
                  child: Text(
                    widget.product.get(kname),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  widget.product.get(kinfo),
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.product.get(krating),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/star.png"),
                    ),
                  ],
                ),
                const Divider(
                  indent: 50,
                  endIndent: 20,
                  height: 30,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.product.get(kprice),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.money_rounded),
                  ],
                ),
                const Divider(
                  indent: 50,
                  endIndent: 20,
                  height: 30,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.product.get(klocarion),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.location_on),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Botton(
                  text: 'حجز',
                  image: "assets/images/booking.png",
                ),
                Botton(image: "assets/images/call.png", text: "اتصل")
              ],
            )
          ],
        ),
      ),
    );
  }
}
