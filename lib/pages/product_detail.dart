import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/product_item.dart';

class ProductDetail extends StatefulWidget {
  final int index;

  const ProductDetail({super.key, required this.index});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final listProduct = DummyData().listProduct;

  void addToCart() {
    // true
    Get.snackbar('Success', 'Add product to cart successfully!');
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

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
                    listProduct[widget.index].pictureURL,
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
                              Text('${listProduct[widget.index].price} VNĐ',
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
                                Text(listProduct[widget.index].productName,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                    )),
                                Text(listProduct[widget.index].productID,
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
                              onPressed: addToCart,
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
  }
}
