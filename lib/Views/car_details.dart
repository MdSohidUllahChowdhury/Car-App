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
              height: MediaQuery.of(context).size.height * .62,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Utils.priceAndReating('Tesla Model 3', '(4.8)'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade800,
                        fontFamily: 'Bold',
                        letterSpacing: 1.3,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeatureDetails(),
                        FeatureDetails(),
                        FeatureDetails(),
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
                  ]))
        ],
      ),
    );
  }
}