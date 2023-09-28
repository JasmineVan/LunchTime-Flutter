import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/product_detail_api.dart';
import 'package:http/http.dart' as http;

Future<dynamic> fetchFood() async {
  final response = await http
      .get(Uri.parse('http://103.157.218.115/LunchTime/hs/LunchTime/V1/Food'));

  if (response.statusCode == 200) {
    dynamic value = jsonDecode(response.body);
    return value;
  } else {
    throw Exception('Failed to load food');
  }
}

foodHandler(dynamic foodList) {}

class FoodItem {
  final String code;
  final String description;
  final String detail;
  final String category;
  final String pictureURL;
  final int rating;
  final double price;

  FoodItem({required this.code,
    required this.description,
    required this.detail,
    required this.category,
    required this.pictureURL,
    required this.rating,
    required this.price});

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      code: json['code'],
      description: json['description'],
      detail: json['detail'],
      category: json['category'],
      pictureURL: json['pictureURL'],
      rating: json['rating'],
      price: json['price'],
    );
  }
}

// void main() => runApp(const HomeAPI());

class HomeAPI extends StatefulWidget {
  String username;

  HomeAPI({super.key, this.username = 'New user'});

  @override
  State<HomeAPI> createState() => _HomeAPIState();
}

class _HomeAPIState extends State<HomeAPI> {
  late Future<FoodItem> futureFood;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4CDCB),
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
                  "assets/images/cover2.png",
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
                      const Text('Welcome , '),
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
              child: Center(
                child: FutureBuilder<dynamic>(
                  future: fetchFood(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Expanded(
                        child: Container(
                          color: Colors.white,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            // itemCount: dummyData.listProduct.length,
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () =>
                                    Get.to(ProductDetailAPI(
                                      foodCode: snapshot.data[index]["Code"],)),
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(color: Colors.grey),
                                    color: const Color.fromRGBO(244, 205, 203, 0.5),
                                  ),
                                  height: 120.0,
                                  width: 120.0,
                                  margin: const EdgeInsets.only(
                                      top: 4.0,
                                      bottom: 4.0,
                                      left: 16.0,
                                      right: 16.0),
                                  child: Center(
                                    child: Container(
                                      margin:
                                      const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            radius: 60.0,
                                            // backgroundImage: AssetImage(
                                            //   // dummyData.listProduct[index].pictureURL,
                                            //     snapshot.data[index]["pictureURL"]
                                            // )
                                            backgroundImage: NetworkImage(
                                                '${snapshot
                                                    .data[index]["PictureURL"]}'),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .end,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    // dummyData.listProduct[index].productName
                                                      snapshot.data[index]
                                                      ["Description"]
                                                          .toString(),
                                                      style: const TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontSize: 20.0,
                                                      )),
                                                  Text(
                                                    // "ID: ${dummyData.listProduct[index].productID}",
                                                    "ID: ${snapshot
                                                        .data[index]["Code"]}",
                                                    style: const TextStyle(
                                                      fontSize: 12.0,
                                                      fontStyle: FontStyle
                                                          .italic,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        // "ID: ${dummyData.listProduct[index].productID}",
                                                        "${snapshot
                                                            .data[index]["Category"]}",
                                                        style: const TextStyle(
                                                          fontSize: 12.0,
                                                          fontStyle: FontStyle
                                                              .italic,
                                                        ),
                                                      ),
                                                      const Text(' - '),
                                                      // Text(
                                                      //   "Rate: ${snapshot.data[index]["Rating"]}"
                                                      //   // "ID: ${dummyData.listProduct[index].productID}",
                                                      //   ,
                                                      //   style: const TextStyle(
                                                      //     fontSize: 12.0,
                                                      //     fontStyle: FontStyle.italic,
                                                      //   ),
                                                      // ),
                                                      Text((() {
                                                        if (snapshot
                                                            .data[index]["Rating"]
                                                            .length ==
                                                            0) {
                                                          return "No rating";
                                                        }
                                                        return "${snapshot
                                                            .data[index]["Rating"]}";
                                                      }()))
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                // "${dummyData.listProduct[index].price} VND",
                                                  "${snapshot
                                                      .data[index]["Price"]} VNĐ",
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
                      );
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    // By default, show a loading spinner.
                    return const CircularProgressIndicator();
                  },
                ),
              ),
          ),
        ],
      ),
    );
  }
}
