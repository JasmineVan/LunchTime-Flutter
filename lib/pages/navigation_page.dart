import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/pages/product_detail.dart';

import '../models/product_item.dart';
import 'home.dart';
import 'home_api.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          currentPageIndex = index;
          setState(() {

          });
        },
        selectedItemColor: const Color(0xFFEE8D4A),
        currentIndex: currentPageIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.fastfood_rounded),
            icon: Icon(Icons.fastfood_outlined),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.food_bank_rounded),
            icon: Icon(Icons.food_bank_outlined),
            label: 'Food API',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person_2_rounded),
            icon: Icon(Icons.person_2_outlined),
            label: 'Nothing',
          ),
        ],
      ),
      body: <Widget>[
        HomePage(),
        HomeAPI(),
        Container(
          color: const Color(0xFFFFD18F),
          alignment: Alignment.center,
          child: ElevatedButton(
            child: const Text('Choose food'),
            onPressed: () {
              final dummyData = DummyData();
              final random = Random();
              int randomIndex = random.nextInt(dummyData.listProduct.length);
              Get.to(ProductDetail(index: randomIndex, playConfetti: true,));
            },
          ),
        ),
      ][currentPageIndex],
    );
  }
}
