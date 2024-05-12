
import 'package:flutter/material.dart';
class DoctorIstem extends StatelessWidget {
  const DoctorIstem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'دكتور ايمان طنطاوى ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'استشاى  زراعه وتقويم وتجميل الاسنان ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'سعر الكشف : 300 جنيه',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.money_rounded),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'المهندسين :شارع جزيره العرب',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
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
        height: 250,
        width: 400,
      ),
    );
  }
}
