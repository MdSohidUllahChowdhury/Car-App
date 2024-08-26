import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/Views/car_details.dart';

class FeatureDetails extends StatelessWidget {
  
  const FeatureDetails(
      {super.key,
     });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const CarDetails()),
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(4.5),
        height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.shade400,
                  blurStyle: BlurStyle.outer,
                  //spreadRadius:1.5,
                  offset: const Offset(1, 3)),
            ]),
        child: const Column(
          children: [
          ]
        ),
      ),
    );
  }
}