part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<ProductModel> products;
  ProductsLoaded(this.products);
}
