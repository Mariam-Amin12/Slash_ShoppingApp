import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/data/models/product_model.dart';
import 'package:shopping/data/repositories/products/product_repository.dart';


part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepository productsRepository;
  late List<ProductModel> products;

  ProductsCubit(this.productsRepository) : super(ProductsInitial());

  Future<List<ProductModel>> getAllProducts() async {
    final products = await productsRepository.getAllProducts();
    emit(ProductsLoaded(products));
    this.products = products;
    return products;
  }

    Future<List<ProductModel>> GetBestSelling() async {
    final products = await productsRepository.getBestSellingProducts();
    emit(ProductsLoaded(products));
    this.products = products;
    return products;
  }

    Future<List<ProductModel>> getNewArraival() async {
    final products = await productsRepository.getNewArrivalProducts();
    emit(ProductsLoaded(products));
    this.products = products;
    return products;
  }

    Future<List<ProductModel>> getRecommenededForYou() async {
    final products = await productsRepository.getRecommendedForYouProducts();
    emit(ProductsLoaded(products));
    this.products = products;
    return products;
  }
}
