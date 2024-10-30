import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Views/profile.dart';
import 'package:car_app/Widgets/card_of_car.dart';
import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Utils.listSearchInfo(),
            const Expanded(
              child: TabBar(
                  // indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      text: 'Populer',
                    ),
                    Tab(text: 'View all'),
                  ]),
            ),
            const Expanded(child: TabBarView(children: [CarCard(), Profile()]))
          ],
        ),
      ),
    );
  }
}
