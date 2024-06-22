// lib/repositories/product_repository.dart
import 'dart:convert';
import 'package:flutter/services.dart';
import 'product.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts(String category) async {
    final response = await rootBundle.loadString('assets/data/dummyData.json');

    final data = json.decode(response);

    List<Product> products =
        (data[category] as List).map((item) => Product.fromJson(item)).toList();

    return products;
  }
}
