import 'package:flutter/material.dart';
import 'package:car_app/Controller/utils.dart';

Widget carLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Utils.carLogoImagePath('lib/Assets/image/logo1.png'),
      Utils.carLogoImagePath('lib/Assets/image/logo2.png'),
      Utils.carLogoImagePath('lib/Assets/image/logo3.png'),
      Utils.carLogoImagePath('lib/Assets/image/logo4.png'),
      Utils.carLogoImagePath('lib/Assets/image/logo5.png'),
    ],
  );
}