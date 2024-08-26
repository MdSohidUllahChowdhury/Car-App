import 'package:flutter/material.dart';
import 'package:music_player/Widgets/card_of_car.dart';

Widget carModel() {
  return const Column(
    children: [
      //*1
      Row(
        children: [
          CarCard(
            image: 'lib/Assets/image/car2.png',
            name: 'BMW ModelXe',
            price: '\$22,800',
            reating: '4.6',
          ),
          CarCard(
            image: 'lib/Assets/image/car1.png',
            name: 'BMW ModelXe',
            price: '\$28,800',
            reating: '4.7',
          ),
        ],
      ),
      //*2
      Row(
        children: [
          CarCard(
            image: 'lib/Assets/image/car3.png',
            name: 'BMW ModelXe',
            price: '\$44,800',
            reating: '4.9',
          ),
          CarCard(
            image: 'lib/Assets/image/car4.png',
            name: 'BMW ModelXe',
            price: '\$222,800',
            reating: '4.3',
          ),
        ],
      ),
      //* 3
      Row(
        children: [
          CarCard(
            image: 'lib/Assets/image/car5.png',
            name: 'BMW ModelXe',
            price: '\$226,800',
            reating: '4.7',
          ),
          CarCard(
            image: 'lib/Assets/image/car1.png',
            name: 'BMW ModelXe',
            price: '\$82,800',
            reating: '4.5',
          ),
        ],
      ),
      //* 4
      Row(
        children: [
          CarCard(
            image: 'lib/Assets/image/car4.png',
            name: 'BMW ModelXe',
            price: '\$226,800',
            reating: '4.7',
          ),
          
        ],
      ),
    ],
  );
}
