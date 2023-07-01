import 'package:flutter/cupertino.dart';

class GetProduct {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RankingModel rate;

  GetProduct({required this.rate,
    required this.image,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
  });

  factory GetProduct.fromJson(jsonData) {
    return GetProduct(
        image: jsonData['image'],
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        category: jsonData[' category'],
      rate: RankingModel.fromJson(jsonData['rating'])

    );

  }
}

class RankingModel {
  final double rate;
  final int count;

  RankingModel({required this.rate, required this.count});
  factory RankingModel.fromJson(jsonData)
  {
    return RankingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
