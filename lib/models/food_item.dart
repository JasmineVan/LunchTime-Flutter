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

class Foods{

  List<FoodItem> listFood = [

  ];
}