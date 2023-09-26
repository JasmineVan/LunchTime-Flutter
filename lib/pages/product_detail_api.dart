import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<dynamic> fetchFood(code) async {
  final response = await http
      .get(Uri.parse('http://103.157.218.115/LunchTime/hs/LunchTime/V1/FindFood?Code=$code'));

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

  FoodItem(
      {required this.code,
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

// void main() => runApp(const ProductDetailAPI(foodCode: foodCode));

class ProductDetailAPI extends StatefulWidget {

  final String foodCode;

  const ProductDetailAPI({super.key, required this.foodCode});

  @override
  State<ProductDetailAPI> createState() => _ProductDetailAPIState();
}

class _ProductDetailAPIState extends State<ProductDetailAPI> {
  late Future<FoodItem> futureFood;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Find Food From API'),
      // ),
      body: Center(
        child: FutureBuilder<dynamic>(
          future: fetchFood(widget.foodCode),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(48.0),
                              bottomRight: Radius.circular(48.0)),
                          child: Image(
                            width: maxWidth,
                            height: maxHeight * 0.4,
                            image: NetworkImage(
                              '${snapshot.data["PictureURL"]}',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            height: maxHeight * 0.6,
                            width: maxWidth,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                    width: maxWidth,
                                    height: maxHeight * 0.6 * 0.2,
                                    margin: const EdgeInsets.all(12.0),
                                    padding: const EdgeInsets.all(12.0),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 16.0,
                                          offset: Offset(0.0, 0.8),
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Text('${snapshot.data["Price"]} VNĐ',
                                            style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.2,
                                            )
                                        ),
                                      ],
                                    )),
                                Container(
                                    width: maxWidth,
                                    height: maxHeight * 0.6 * 0.4,
                                    margin: const EdgeInsets.only(
                                        top: 12.0, bottom: 24.0, left: 24.0, right: 24.0),
                                    padding: const EdgeInsets.all(12.0),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 12.0,
                                          offset: Offset(0.0, 0.8),
                                        )
                                      ],
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(snapshot.data["Description"],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 1.2,
                                              )),
                                          Text(snapshot.data["Code"],
                                              style: const TextStyle(
                                                color: Colors.black54,
                                                fontSize: 20.0,
                                                fontStyle: FontStyle.italic,
                                                letterSpacing: 1.2,
                                              )),
                                          const Text(
                                              'A product description is a form of marketing copy used to describe and explain the benefits of your product. In other words, it provides all the information and details of your product on your ecommerce site.',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                letterSpacing: 1.2,
                                              )
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(
                                    width: maxWidth * 0.5,
                                    height: maxHeight * 0.6 * 0.1,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                        ),
                                        onPressed: (){},
                                        child: const Text(
                                          'Add to cart',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
    );
  }
}
