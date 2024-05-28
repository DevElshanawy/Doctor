import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorIstem extends StatelessWidget {
  DoctorIstem({
    super.key,
    required this.nameText,
    required this.infoText,
    required this.locationText,
    required this.priceText,
    required this.ratingText,
    required this.onTap,
  });
  String? nameText;
  String? infoText;
  String? priceText;
  String? locationText;
  String? ratingText;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 5),
                spreadRadius: 3,
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.greenAccent,
                        child: Text(ratingText!),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      nameText!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/doctor.png'),
                    ),
                  ],
                ),
                Text(
                  maxLines: 2,
                  infoText!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      priceText!,
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
                  endIndent: 10,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      maxLines: 1,
                      locationText!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.location_on),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Botton(
                      text: 'حجز',
                      image: "assets/images/booking.png",
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Botton(image: "assets/images/call.png", text: "اتصل")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Botton extends StatelessWidget {
  Botton({
    super.key,
    required this.image,
    required this.text,
  });
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      height: 50,
      width: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(image),
          ),
          TextButton(
            child: Text(
              text,
              style: const TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
