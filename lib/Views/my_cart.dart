import 'package:flutter/material.dart';
import 'package:music_player/Controller/utils.dart';

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
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {  
              return Container(
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
                      Image.asset('lib/Assets/image/car2.png'),
                      const SizedBox(width: 20),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Supra Mx3',
                            style: TextStyle(
                                fontFamily: 'Bold',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Text(
                            'Price: \$32,500',
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
                   )
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
