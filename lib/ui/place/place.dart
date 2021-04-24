import 'package:flutter/material.dart';
import 'package:trips_app/ui/place/review/review.dart';
import 'description/description.dart';

class Place extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 350.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: ListView(
        children: [
          Description('San Andres - Island', 3.4,
              '''Is a coral island in the Caribbean Sea. Politically part of Colombia, and historically tied to the United Kingdom, San Andrés and the nearby islands of Providencia and Santa Catalina form the department of San Andrés, Providencia and Santa Catalina. San Andrés, in the southern group of islands, is the largest of the department. The official languages of the department are Spanish, English, and San Andrés–Providencia Creole.
                    '''),
          Review(
              "https://tse4.mm.bing.net/th?id=OIP.Kb246C_dlssJkFR02VXWJwHaEy&pid=Api",
              "Alf",
              1,
              5,
              2.5,
              "I rather go to Isla Fernando de Noronha."),
          Review(
              "https://tse1.mm.bing.net/th?id=OIP.OyOn3zJ9IaYaPnNXMIJ6PQHaF3&pid=Api",
              "Josh",
              3,
              10,
              4.5,
              "Great beaches!"),
          Review(
              "https://dz8z45gu0xcif.cloudfront.net/wp-content/uploads/2018/10/29101620/alf-99.jpg",
              "Lynn",
              4,
              20,
              5.0,
              "Fantastic place! Highly recommended!")
        ],
      ),
    );
  }
}
