import 'package:flutter/material.dart';
import 'package:music_player/Controller/utils.dart';

Widget carLogo(){
  return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Utils.carCategory('lib/Assets/image/logo1.png'),
              Utils.carCategory('lib/Assets/image/logo2.png'),
              Utils.carCategory('lib/Assets/image/logo3.png'),
              Utils.carCategory('lib/Assets/image/logo4.png'),
              Utils.carCategory('lib/Assets/image/logo5.png'),
            ],
          );
}