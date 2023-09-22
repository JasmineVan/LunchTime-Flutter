import 'dart:async';
import 'package:flutter/material.dart';

class CommonCarousel extends StatefulWidget {
  const CommonCarousel({Key? key}) : super(key: key);

  @override
  State<CommonCarousel> createState() => _CommonCarouselState();
}

class _CommonCarouselState extends State<CommonCarousel> {

  final List<String> imageList= [
    "assets/images/pic1.jpg",
    "assets/images/pic2.jpg",
    "assets/images/pic3.jpg",
    "assets/images/pic4.jpg"
  ];
  final AssetImage assetImage = const AssetImage("assets/images/pic1.jpg");

  int _currentPage = 0;

  Timer? _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutQuad,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
              color: Colors.white,
              // width: double.infinity,
              height: 100.0,
              child: Image(
                image: AssetImage(
                  imageList[index],
                ),
                fit: BoxFit.fill,
              ));
        },
      ),
    );
  }
}
