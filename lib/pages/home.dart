import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/models/food_item.dart';
import 'package:helloworld/pages/product_detail.dart';
import '../models/product_item.dart';
import 'package:http/http.dart' as http;

import 'home_api.dart';

// class HomePage extends StatelessWidget {
//   String username;
//   HomePage({super.key, this.username = 'New user'});

class HomePage extends StatefulWidget {
  String username;

  HomePage({super.key, this.username = 'New user'});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic futureFood;

  @override
  void initState() {
    super.initState();
    futureFood = fetchFood();
  }

  @override
  Widget build(BuildContext context) {

    final dummyData = DummyData();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 209, 143, 1.0),
      // appBar: AppBar(
      //   titleTextStyle: const TextStyle(
      //     color: Colors.white,
      //     fontSize: 24.0,
      //   ),
      //   title: const Text('Home Page'),
      //   backgroundColor: Colors.red,
      // ),
      body: Column(
        children: [
          // FutureBuilder<FoodItem>(
          //   future: futureFood,
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return Text(snapshot.data!.code);
          //     } else if (snapshot.hasError) {
          //       return Text('${snapshot.error}');
          //     }
          //     // By default, show a loading spinner.
          //     return const CircularProgressIndicator();
          //   },
          // ),
          Container(
              color: Colors.white,
              width: double.infinity,
              height: 240.0,
              child: const Image(
                image: AssetImage(
                  "assets/images/cover.png",
                ),
                fit: BoxFit.fill,
              )),
          // const Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Text(
          //       'This is home page',
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 48.0,
          //       ),
          //     ),
          //   ],
          // ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Welcome, '),
                      Text(
                        widget.username,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // GestureDetector(
                //   onTap: () => Get.to(const HomeAPI()),
                //   child: const Text('Foods from API',
                //       style: TextStyle(
                //         color: Colors.red,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 12.0,
                //       )),
                // ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: dummyData.listProduct.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.to(ProductDetail(index: index, playConfetti: false,)),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: Colors.grey),
                        color: const Color(0xFFFFF6DC),
                      ),
                      height: 120.0,
                      width: 120.0,
                      margin: const EdgeInsets.only(
                          top: 4.0, bottom: 4.0, left: 16.0, right: 16.0),
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                  radius: 60.0,
                                  backgroundImage: NetworkImage(
                                    dummyData.listProduct[index].pictureURL,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                          dummyData.listProduct[index].productName
                                              .toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                          )),
                                      Text(
                                        "ID: ${dummyData.listProduct[index].productID}",
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                      "${dummyData.listProduct[index].price} VNĐ",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
