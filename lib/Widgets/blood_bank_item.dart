import 'package:flutter/material.dart';

// ignore: must_be_immutable
class bloodBankIstem extends StatelessWidget {
  bloodBankIstem(
      {super.key,
      required this.nameText,
      required this.infoText,
      required this.locationText,
      required this.priceText,
      required this.onTap,
      this.image,
      this.image1});
  String? nameText;
  String? infoText;
  String? priceText;
  String? locationText;
  Function onTap;
  String? image;
  String? image1;

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
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(image1!),
                  ),
                ),
                Center(
                  child: Text(
                    nameText!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text(
                  maxLines: 2,
                  infoText!,
                  textAlign: TextAlign.right,
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
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(image!),
                    ),
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
                    Expanded(
                      child: Text(
                        maxLines: 1,
                        locationText!,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.location_on),
                  ],
                ),
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
