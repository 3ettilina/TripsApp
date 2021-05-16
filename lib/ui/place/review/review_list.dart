import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            "Fantastic place! Highly recommended! Really well services, enjoyed a lot!")
      ],
    );
  }
}
