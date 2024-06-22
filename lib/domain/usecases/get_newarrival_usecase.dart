
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/presentation/business_logic/cubit/products_cubit.dart';

class GetNewArriavalUseCase  {
  final ProductsCubit productsCubit;

  GetNewArriavalUseCase(this.productsCubit);

  Future<List<ProductEntity>> execute() async {
    final products = await productsCubit.getNewArraival();
    return products.map((product) => ProductEntity.fromProduct(product)).toList();
  }
}