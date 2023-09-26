import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<FoodItem> fetchFood() async {
  final response = await http
      .get(Uri.parse('http://103.157.218.115/LunchTime/hs/LunchTime/V1/Food'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return FoodItem.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load food');
  }
}

class FoodItem {

  final String code;
  final String description;
  final String detail;
  final String category;
  final String pictureURL;
  final int rating;
  final double price;

  FoodItem({required this.code, required this.description, required this.detail, required this.category, required this.pictureURL, required this.rating, required this.price});

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


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<FoodItem> futureFood;

  @override
  void initState() {
    super.initState();
    futureFood = fetchFood();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<FoodItem>(
            future: futureFood,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.code);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}