import 'package:flutter/material.dart';
import 'package:music_player/Controller/utils.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width * 0.44,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
        boxShadow:[
           BoxShadow(
            blurRadius:2, 
            color: Colors.grey.shade400,
            blurStyle: BlurStyle.outer,
            //spreadRadius:1.5,
            offset:const Offset(1,3)
          ),
        ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('lib/Assets/image/car3.png',
           fit: BoxFit.cover,
           ),
           const SizedBox(height: 10),
           const Text('Tesla Model 1'),
           Utils.priceAndReating('15,990', '4.8')
        ],
      ),
    );
  }
}