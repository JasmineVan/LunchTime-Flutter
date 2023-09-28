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

    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

     return Scaffold(
       backgroundColor: const Color(0xFFF9DEC9),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Container(
               width: maxWidth/2 + maxWidth/4,
               height: maxHeight/2 + maxWidth/4,
               decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 color: Color(0xFFD80032),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     width: maxWidth/2,
                     height: maxHeight/2,
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       color: Color(0xFFF78CA2),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           width: maxWidth/4,
                           height: maxHeight/4,
                           decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             color: Color(0xFFF9DEC9),
                           ),
                           alignment: Alignment.center,
                           child: SizedBox(
                               width: maxWidth/6,
                               height: 40.0,
                               child: ElevatedButton(
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: const Color(0xFF3D0C11),
                                   ),
                                   onPressed: () {
                                     final dummyData = DummyData();
                                     final random = Random();
                                     int randomIndex = random.nextInt(dummyData.listProduct.length);
                                     Get.to(RandomFoodDetail(index: randomIndex, playConfetti: true,));
                                   },
                                   child: const Text(
                                     'Food',
                                     style: TextStyle(
                                       color: Colors.white,
                                     ),
                                   ))),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
     );
  }
}
