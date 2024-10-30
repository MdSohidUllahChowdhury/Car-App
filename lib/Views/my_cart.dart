import 'package:car_app/Controller/provider_cart.dart';
import 'package:car_app/Widgets/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Consumer<CarCartProvidder>(
          builder: (context, provider, child) => Column(
                children: [
                  Utils.appbarCustom('Cart Iteams'),
                  const SizedBox(height: 15),
                  Expanded(
                    child: ListView.builder(
                        itemCount: provider.cart.length,
                        itemBuilder: (context, index) {
                          return CartDemo(item: provider.cart[index]);
                        }),
                  )
                ],
              )),
    );
  }
}
