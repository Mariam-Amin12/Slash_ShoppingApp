import 'package:shopping/data/models/product_model.dart';

class ProductEntity {
  final int? id;
  final String? name;
  final double? price;
  final String? image;

  ProductEntity( {required this.id, required this.name, required this.price,required this.image});

  factory ProductEntity.fromProduct(ProductModel product) {
    return ProductEntity(
      id: product.id,
      name: product.name,
      price: product.price,
      image:product.image,
    );
  }
}
