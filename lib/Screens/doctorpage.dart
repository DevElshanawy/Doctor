import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class doctorpage extends StatelessWidget {
  const doctorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doctor'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('doctorsscreen');
                },
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(
                        width: 270,
                      ),
                      Text(
                        "اسنان",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration( color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 5,offset: Offset(0,5))
                  ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                  ),
                  height: 70,
                  width: 500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: const Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 270,
                    ),
                    Text(
                      "باطنه",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 5,offset: Offset(0,5))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                height: 70,
                width: 500,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 270,
                    ),
                    Text(
                      "قلب",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration( color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 5,offset: Offset(0,5))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                height: 70,
                width: 500,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 270,
                    ),
                    Text(
                      "عظام",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration( color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 5,offset: Offset(0,5))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                height: 70,
                width: 500,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 270,
                    ),
                    Text(
                      "عظام",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration( color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 5,offset: Offset(0,5))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                height: 70,
                width: 500,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 270,
                    ),
                    Text(
                      "عظام",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration( color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 5,offset: Offset(0,5))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                height: 70,
                width: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
