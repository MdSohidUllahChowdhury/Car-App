import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/Controller/utils.dart';
import 'package:music_player/Views/car_details.dart';

class CarCard extends StatelessWidget {
  final String price;
  final String reating;
  final String name;
  final String image;
  const CarCard(
      {super.key,
      required this.price,
      required this.reating,
      required this.name,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const CarDetails()),
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.255,
        width: MediaQuery.of(context).size.width * 0.44,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 15,
              ),
              alignment: Alignment.topLeft,
            ),
            Image.asset(
              image,
            ),
            Center(
              child: Text(
                name,
                style: const TextStyle(
                    fontFamily: 'Bold', 
                    fontSize: 12, 
                    color: Colors.black
                    ),
              ),
            ),
            Utils.priceAndReating(price, reating)
          ],
        ),
      ),
    );
  }
}