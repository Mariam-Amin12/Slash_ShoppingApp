import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shopping/data/constants/strings/urls.dart';
import 'package:shopping/data/models/product_model.dart';
import 'product_repository.dart';

class ProductsDummy extends ProductsRepository {
  final Urls? urls = Urls();

  ProductsDummy();

  @override
  Future<List<ProductModel>> getAllProducts() async {
    List<ProductModel> products = [];
    try {
      String jsonString = await rootBundle.loadString(urls!.ProductsPath);
      Map<String, dynamic> jsonData = jsonDecode(jsonString);

      List<dynamic> bestSelling = jsonData['bestSelling'];
      List<dynamic> newArrival = jsonData['newArrival'];
      List<dynamic> recommendedForYou = jsonData['recommendedForYou'];

      products
          .addAll(bestSelling.map((e) => ProductModel.fromJSON(e)).toList());
      products.addAll(newArrival.map((e) => ProductModel.fromJSON(e)).toList());
      products.addAll(
          recommendedForYou.map((e) => ProductModel.fromJSON(e)).toList());

      return products;
    } catch (e) {
      // Handle any errors that occur while reading the file
      print('Error reading file: $e');
      return [];
    }
  }

  @override
  Future<List<ProductModel>> getBestSellingProducts() async {
    List<ProductModel> products = [];
    try {
      String jsonString = await rootBundle.loadString(urls!.ProductsPath);
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
       List<dynamic> bestSelling = jsonData['bestSelling'];

     products.addAll(bestSelling.map((e) => ProductModel.fromJSON(e)).toList());

      return products;
    } catch (e) {
      // Handle any errors that occur while reading the file
      print('Error reading file: $e');
      return [];
    }
  }

  @override
  Future<List<ProductModel>> getNewArrivalProducts() async {
    List<ProductModel> products = [];
    try {
      String jsonString = await rootBundle.loadString(urls!.ProductsPath);
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
       List<dynamic> newArrival = jsonData['newArrival'];

     products.addAll(newArrival.map((e) => ProductModel.fromJSON(e)).toList());


      return products;
    } catch (e) {
      // Handle any errors that occur while reading the file
      print('Error reading file: $e');
      return [];
    }
  }

  @override
  Future<List<ProductModel>> getRecommendedForYouProducts() async {
    List<ProductModel> products = [];
    try {
      String jsonString = await rootBundle.loadString(urls!.ProductsPath);
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
       List<dynamic> recommendedForYou = jsonData['recommendedForYou'];

     products.addAll(recommendedForYou.map((e) => ProductModel.fromJSON(e)).toList());

      return products;
    } catch (e) {
      // Handle any errors that occur while reading the file
      print('Error reading file: $e');
      return [];
    }
  }
}
