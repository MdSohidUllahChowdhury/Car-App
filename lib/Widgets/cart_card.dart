import 'package:car_app/Model/model_list.dart';
import 'package:car_app/Views/car_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class CartDemo extends StatelessWidget {
  const CartDemo({super.key, required this.item});
  
  final ModelList item;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => CarDetails(
          image: item.image,
          brandName: item.name,
          reating: item.reating,
          priceCar: item.price)),
      child: Animate(
        child: Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey.shade400,
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(1, 3)),
                ]),
            child: Row(
              children: [
                Image.asset(
                  item.image,
                  height: 100,
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 14, color: Colors.black),
                    ),
                    Text(
                      item.price,
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 12, color: Colors.black),
                    ),
                    Text(
                      'Reating: ⭐ ${item.reating}',
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 10, color: Colors.black),
                    ),
                  ],
                )
              ],
            )
            ).animate().flip().shimmer(
      color: Colors.white, 
      duration: const Duration(seconds: 3)
      ),
      ),
    );
  }
}
