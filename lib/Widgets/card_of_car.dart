import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Model/model_list.dart';
import 'package:car_app/Views/car_details.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<ModelList> productItem = [
      const ModelList(
          id: '1',
          price: '\$22,899',
          reating: '4.8',
          name: 'BMW Mz5',
          image: 'lib/Assets/image/car2.png'),
      const ModelList(
          id: '2',
          price: '\$45,899',
          reating: '4.7',
          name: 'Toyota',
          image: 'lib/Assets/image/car3.png'),
      const ModelList(
          id: '3',
          price: '\$30,599',
          reating: '4.4',
          name: 'Masdza Xr2',
          image: 'lib/Assets/image/car4.png'),
      const ModelList(
          id: '4',
          price: '\$80,000',
          reating: '4.9',
          name: 'Leambergini',
          image: 'lib/Assets/image/car5.png'),
      const ModelList(
          id: '5',
          price: '\$18,499',
          reating: '4.8',
          name: 'Marsedi M5X',
          image: 'lib/Assets/image/car1.png'),
    ];
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 3,
          childAspectRatio: .87),
      itemCount: productItem.length,
      itemBuilder: (context, index) {
        final iteam = productItem[index];
        return Expanded(
          child: InkWell(
            onTap: () => Get.to(() => CarDetails(
                  image: iteam.image,
                  brandName: iteam.name,
                  reating: iteam.reating,
                  priceCar: iteam.price,
                )),
            child: Container(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(5),
              //height: MediaQuery.of(context).size.height * 0.40,
              //width: MediaQuery.of(context).size.width * 0.44,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      size: 15,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Image.asset(
                    iteam.image,
                  ),
                  Center(
                    child: Text(
                      iteam.name,
                      style: const TextStyle(
                          fontFamily: 'Bold',
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  Utils.priceAndReating(iteam.price, iteam.reating),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}