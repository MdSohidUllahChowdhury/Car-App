import 'package:flutter/material.dart';
import 'package:music_player/Controller/utils.dart';
import 'package:music_player/Widgets/car_model.dart';

class CarMainScreen extends StatelessWidget {
  const CarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor:Colors.grey.shade300,
      body:Column(
        children: [
          Utils.listProInfo(),
          Utils.listSearchInfo(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Utils.carCategory('lib/Assets/image/logo1.png'),
              Utils.carCategory('lib/Assets/image/logo2.png'),
              Utils.carCategory('lib/Assets/image/logo3.png'),
              Utils.carCategory('lib/Assets/image/logo4.png'),
              Utils.carCategory('lib/Assets/image/logo5.png'),
            ],
          ),
          const SizedBox(height: 25),
          Container(
            height: MediaQuery.of(context).size.height * 0.62,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(35),
                topRight:Radius.circular(35),
                )
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height:15),
                  Utils.populerViewAll(),
                  carModel()
                  
                ]
              ),
            )
          )
        ],
      ),
    );
  }
}