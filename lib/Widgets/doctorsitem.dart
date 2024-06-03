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
                   
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        nameText!,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey[100],
                      backgroundImage: AssetImage('assets/images/doctor.png'),
                    ),
                  ],
                ),
                Text(
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  infoText!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      priceText!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.money_rounded),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 10,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        locationText!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.location_on),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    botton(
                      text: 'حجز',
                      image: "assets/images/booking.png",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    botton(image: "assets/images/call.png", text: "اتصل")
                  ],
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            boxShadow: [
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
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class botton extends StatelessWidget {
  botton({
    super.key,
    required this.image,
    required this.text,
  });
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      height: 50,
      width: 130,
    );
  }
}
