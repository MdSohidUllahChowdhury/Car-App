import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/Controller/utils.dart';
import 'package:music_player/Widgets/custom_bottom.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Utils.appbarCustom('Profile'),
              const SizedBox(
                height: 20,
              ),
              CustomBottom(
                nameTheBottom: 'Setting',
                iconName: Icons.settings,
                routName: () => Get.to(const Setting()),
              ),
              CustomBottom(
                nameTheBottom: 'My Car',
                iconName: Icons.car_repair,
                routName: () => Get.back(),
              ),
              CustomBottom(
                nameTheBottom: 'Social Media Links',
                iconName: Icons.share,
                routName: () => Get.back(),
              ),
              CustomBottom(
                nameTheBottom: 'Setting',
                iconName: Icons.settings,
                routName: () => Get.to(const Setting()),
              ),
              CustomBottom(
                nameTheBottom: 'My Car',
                iconName: Icons.car_repair,
                routName: () => Get.back(),
              ),
              CustomBottom(
                nameTheBottom: 'Social Media Links',
                iconName: Icons.share,
                routName: () => Get.back(),
              ),
              CustomBottom(
                nameTheBottom: 'Setting',
                iconName: Icons.settings,
                routName: () => Get.to(const Setting()),
              ),
              CustomBottom(
                nameTheBottom: 'My Car',
                iconName: Icons.car_repair,
                routName: () => Get.back(),
              ),
              CustomBottom(
                nameTheBottom: 'Social Media Links',
                iconName: Icons.share,
                routName: () => Get.back(),
              ),
            ],
          ),
        ));
  }
}
