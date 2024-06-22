import 'package:flutter/material.dart';
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/domain/usecases/get_allproducts_usecase.dart';

class ProductViewModel extends ChangeNotifier {
  final GetAllProductsUseCase useCase;

  ProductViewModel({required this.useCase});

  List<ProductEntity> _products = [];

  List<ProductEntity> get products => _products;

  Future<void> getAllProducts() async {
    _products = await useCase.execute();
    notifyListeners();
  }
}
