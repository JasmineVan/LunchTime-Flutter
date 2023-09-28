import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/pages/product_detail.dart';
import 'package:helloworld/pages/random_food_detail.dart';

import '../models/product_item.dart';

class RandomFood extends StatefulWidget {
  const RandomFood({Key? key}) : super(key: key);

  @override
  State<RandomFood> createState() => _RandomFoodState();
}

class _RandomFoodState extends State<RandomFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFD18F),
      alignment: Alignment.center,
      child: ElevatedButton(
        child: const Text('Choose food'),
        onPressed: () {
          final dummyData = DummyData();
          final random = Random();
          int randomIndex = random.nextInt(dummyData.listProduct.length);
          Get.to(RandomFoodDetail(index: randomIndex, playConfetti: true,));
        },
      ),
    );
  }
}
