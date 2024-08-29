import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Views/welcome_page.dart';


void main (){
  runApp(const CarApp());
}
class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Reguler',
        useMaterial3: true,
        colorSchemeSeed: Colors.white
      ),    
    );
  }
}