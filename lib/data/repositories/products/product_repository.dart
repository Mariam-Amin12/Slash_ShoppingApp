import 'package:shopping/data/models/product_model.dart';


abstract class ProductsRepository {


  ProductsRepository();

  Future<List<ProductModel>> getAllProducts();
  Future<List<ProductModel>> getBestSellingProducts();
  Future<List<ProductModel>> getNewArrivalProducts();
  Future<List<ProductModel>> getRecommendedForYouProducts();
}
