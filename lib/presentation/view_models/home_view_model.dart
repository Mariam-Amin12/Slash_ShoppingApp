import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/data/models/category_model.dart';
import 'package:shopping/data/repositories/products/product_dummy.dart';
import 'package:shopping/domain/entities/category_entity.dart';
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/domain/usecases/get_allproducts_usecase.dart';
import 'package:shopping/domain/usecases/get_bestseller_usecase.dart';
import 'package:shopping/domain/usecases/get_newarrival_usecase.dart';
import 'package:shopping/domain/usecases/get_recomeneded_usecase.dart';
import 'package:shopping/presentation/business_logic/cubit/products_cubit.dart';

class HomeViewModel extends ChangeNotifier {
  final List<CategoryEntity> categories = [
    CategoryEntity.fromModel(
      CategoryModel(
          title: "Fashion",
          icon: const FaIcon(
            FontAwesomeIcons.shirt,
            color: Colors.white,
          ),
          ontap: () {}),
    ),
    CategoryEntity.fromModel(
      CategoryModel(
          title: "Games",
          icon: const FaIcon(FontAwesomeIcons.diceFive, color: Colors.white),
          ontap: () {}),
    ),
    CategoryEntity.fromModel(
      CategoryModel(
          title: "Accessories",
          icon: const FaIcon(FontAwesomeIcons.glasses, color: Colors.white),
          ontap: () {}),
    ),
    CategoryEntity.fromModel(
      CategoryModel(
          title: "Books",
          icon: const FaIcon(FontAwesomeIcons.book, color: Colors.white),
          ontap: () {}),
    ),
    CategoryEntity.fromModel(
      CategoryModel(
          title: "Artifacts",
          icon: const FaIcon(FontAwesomeIcons.paintRoller, color: Colors.white),
          ontap: () {}),
    ),
  ];

  List<dynamic> advertisements = [
    "assets/images/advertisements/Adver1.jpeg",
    "assets/images/advertisements/Adver3.jpg",
  ];
  // Future<List<ProductEntity>>? AllP;
  // Future<List<ProductEntity>>? BestP;
  // Future<List<ProductEntity>>? RecP;
  // Future<List<ProductEntity>>? NewP;

  Future<List<ProductEntity>> getProducts(String name) async {
    switch (name) {
      case "Best Selling":
        final ProductsCubit productsCubit = ProductsCubit(ProductsDummy());
        GetBestSellerUseCase getBestSellerUseCase =
            GetBestSellerUseCase(productsCubit);
        final products = await getBestSellerUseCase.execute();
        return products;

      case "New Arrival":
        final ProductsCubit productsCubit = ProductsCubit(ProductsDummy());
        GetNewArriavalUseCase getNewArriavalUseCase =
            GetNewArriavalUseCase(productsCubit);
        final products = await getNewArriavalUseCase.execute();
        return products;

      case "Recommeneded For You":
        final ProductsCubit productsCubit = ProductsCubit(ProductsDummy());
        GetRecommenededForYouUseCase getRecommenededForYouUseCase =
            GetRecommenededForYouUseCase(productsCubit);
        final products = await getRecommenededForYouUseCase.execute();
        return products;

      default:
        return [];
    }
  }

  Future<List<ProductEntity>> getAllproducts() async {
    final ProductsCubit productsCubit = ProductsCubit(ProductsDummy());
    GetAllProductsUseCase getProductsUseCase =
        GetAllProductsUseCase(productsCubit);
    final products = await getProductsUseCase.execute();
    return products;

  }
   List<ProductEntity> _favoriteIds = [];

  List<ProductEntity> get favoriteIds => _favoriteIds;

  void addToFavorites(ProductEntity product) {
    if (!_favoriteIds.contains(product)) {
      _favoriteIds.add(product);
      notifyListeners();
    }
  }

  void removeFromFavorites(ProductEntity product) {
    if (_favoriteIds.contains(product)) {
      _favoriteIds.remove(product);
      notifyListeners();
    }
  }
List<ProductEntity> _cartItems = [];

  List<ProductEntity> get cartItems => _cartItems;

  void addToCart(ProductEntity product) {
    _cartItems.add(product);
    notifyListeners();
  }

}
