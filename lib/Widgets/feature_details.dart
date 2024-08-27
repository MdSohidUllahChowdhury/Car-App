import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/Views/car_details.dart';

class FeatureDetails extends StatelessWidget {
  final IconData iconNmae;
  final String titleName;
  final String descriptionName;
  const FeatureDetails(
      {super.key, required this.iconNmae, required this.titleName, required this.descriptionName,
     });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const CarDetails()),
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(4.5),
        height: MediaQuery.of(context).size.height * 0.21,
        width: MediaQuery.of(context).size.width * 0.28,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.shade400,
                  blurStyle: BlurStyle.outer,
                  offset: const Offset(1, 3)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(iconNmae, 
            size: 20, 
            color: Colors.black,),
            Text(titleName, 
             style: TextStyle(
              fontSize: 13, 
              color: Colors.grey.shade800),
              ),
              Text(descriptionName, 
              style:const TextStyle(
                fontSize: 16, 
                color: Colors.black,
                fontWeight: FontWeight.bold),),
          ]
        ),
      ),
    );
  }
}