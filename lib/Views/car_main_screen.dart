import 'package:flutter/material.dart';
import 'package:music_player/Controller/utils.dart';
import 'package:music_player/Model/carlogo_model.dart';
import 'package:music_player/Widgets/card_of_car.dart';


class CarMainScreen extends StatelessWidget {
  const CarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(children: [
          Utils.listProInfo(),
          Utils.listSearchInfo(),
          const SizedBox(height: 10),
          carLogo(),
          const SizedBox(height:12),
          Container(        
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                   )
                  ),
              height: MediaQuery.of(context).size.height * 0.64,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Utils.populerViewAll(),
                        const CarCard(),
                      ]
                    )
                  )
                ),
          ]
        )
     );
  }
}
