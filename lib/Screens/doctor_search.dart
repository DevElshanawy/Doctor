import 'package:doctor_appp/Widgets/doctorsitem.dart';
import 'package:doctor_appp/constant.dart';
import 'package:flutter/material.dart';

class DoctorSearch extends SearchDelegate {
           List ?filtre;
  List doctors;
  DoctorSearch({required this.doctors});
  @override
  List<Widget>? buildActions(BuildContext context) {
    
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    
    return ListView.builder(

      itemCount:  doctors.length ,
      itemBuilder: (context, i) {
        return DoctorIstem(
          onTap: () {},
          nameText: "${doctors[i][Kname]}",
          infoText: "${doctors[i][Kinfo]}",
          priceText: "${doctors[i][Kprice]}",
          locationText: "${doctors[i][Klocarion]}",
          ratingText: "${doctors[i][Krating]}",
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   
        if(query==""){
 return ListView.builder(
      itemCount:  doctors.length ,
      itemBuilder: (context, i) {
        return DoctorIstem(
          onTap: () {},
          nameText: "${doctors[i][Kname]}",
          infoText: "${doctors[i][Kinfo]}",
          priceText: "${doctors[i][Kprice]}",
          locationText: "${doctors[i][Klocarion]}",
          ratingText: "${doctors[i][Krating]}",
        );
      },
    );
        }else{
          filtre =
        doctors.where((element) => element.toString().contains(query)).toList();
    return ListView.builder(
      itemCount:  filtre!.length ,
      itemBuilder: (context, i) {
        return DoctorIstem(
          onTap: () {},
          nameText: "${filtre![i][Kname]}",
          infoText: "${filtre![i][Kinfo]}",
          priceText: "${filtre![i][Kprice]}",
          locationText: "${filtre![i][Klocarion]}",
          ratingText: "${filtre![i][Krating]}",
        );
      },
    );
        }
  }
}
