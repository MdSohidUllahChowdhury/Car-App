import 'package:flutter/material.dart';
import 'package:car_app/Controller/utils.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(
        children: [
          Utils.appbarCustom(
            'Cart Iteams',
          ),
          const SizedBox(height: 15),
          Container(
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
                    'lib/Assets/image/car3.png',
                    height: 100,
                  ),
                  const SizedBox(width: 20),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Toyota',
                        style: TextStyle(
                            fontFamily: 'Bold',
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        '\$44,800',
                        style: TextStyle(
                            fontFamily: 'Bold',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      Text(
                        'Reating: ⭐ 4.9',
                        style: TextStyle(
                            fontFamily: 'Bold',
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
