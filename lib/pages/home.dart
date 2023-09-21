// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../models/product_item.dart';

class HomePage extends StatelessWidget {
  String username;

  HomePage({super.key, this.username = 'New user'});

  @override
  Widget build(BuildContext context) {
    final dummyData = DummyData();
    return Scaffold(
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
          Container(
              color: Colors.red,
              width: double.infinity,
              height: 200.0,
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
            margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Welcome, '),
                Text(
                  username,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: dummyData.listProduct.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: Colors.grey),
                    color: const Color.fromRGBO(247, 247, 247, 1.0),
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
                              backgroundImage: AssetImage(
                                dummyData.listProduct[index].pictureURL,
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
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
                                  "${dummyData.listProduct[index].price} VND",
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
