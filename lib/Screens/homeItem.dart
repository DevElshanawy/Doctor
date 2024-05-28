// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItem extends StatelessWidget {
  HomeItem({super.key, required this.text, required this.onTap});
  String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffe6eeff),
                  offset: Offset(0, 5),
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200],
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child:
                        Image(image: AssetImage("assets/images/doctors.png"))),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 150,
            width: 150,
            child: FittedBox(
              child: Text(
                (text),
                style: const TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
