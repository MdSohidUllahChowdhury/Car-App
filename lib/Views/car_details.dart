import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/Controller/utils.dart';
import 'package:music_player/Views/car_main_screen.dart';
import 'package:music_player/Widgets/feature_details.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Utils.appbarCustom(),
          Image.asset(
            'lib/Assets/image/car2.png',
            height: 198,
            fit: BoxFit.fitWidth,
          ),
          Container(
              padding:const EdgeInsets.symmetric(horizontal:  4),
              height: MediaQuery.of(context).size.height * .62,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                   )
                  ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Utils.carNameAndReating('Tesla Model 3', '(4.8)'),
                    const SizedBox(height:5),
                    Text('Features',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade800,
                        fontFamily: 'Bold',
                        letterSpacing: 1.3,
                      ),
                    ),
                   
                    Text('esis Moom 3 is an all deckric compact socan.\noroduced by les a. inc. it is desioned to... more',
                      style: TextStyle(
                        fontSize:10,
                        color: Colors.grey.shade800,
                        letterSpacing: 1.2,
                      ),
                    ),
                    
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeatureDetails(
                          iconNmae: Icons.chair_outlined,
                          titleName: 'Total\nCapacity',
                          descriptionName: '6 Sets',
                        ),
                        FeatureDetails(
                          iconNmae: Icons.speed_sharp,
                          titleName: 'Highest\nSpeed',
                          descriptionName: '200 KM/H',
                        ),
                        FeatureDetails(
                          iconNmae: Icons.energy_savings_leaf_outlined,
                          titleName: 'Engine\nOutput',
                          descriptionName: '500 HP',
                        ),
                      ],
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'price\n\$282,500',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade800,
                            fontFamily: 'Bold',
                            letterSpacing: 1.3,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.offAll(
                              () => const CarMainScreen(),
                              transition: Transition.leftToRight,
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey.shade800),
                            elevation: MaterialStateProperty.all(0),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(220, 55)),
                          ),
                          child: const Text(
                            'BUY NOW',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.2,
                                fontFamily: 'Bold'),
                          ),
                        ),
                      ],
                    )
                  
                  ]
           ),
          )
        ],
      ),
    );
  }
}