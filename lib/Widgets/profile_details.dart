import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/Views/car_details.dart';

class ProfileDetails extends StatelessWidget {
  final IconData iconNmae;
  final String titleName;
  
  const ProfileDetails(
      {super.key, required this.iconNmae, required this.titleName,
     });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const CarDetails()),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.25,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(iconNmae, 
            size: 20, 
            color: Colors.black,),
            Text(titleName, 
             style: TextStyle(
              fontSize: 12, 
              color: Colors.grey.shade800),
              ),
             
          ]
        ),
      ),
    );
  }
}