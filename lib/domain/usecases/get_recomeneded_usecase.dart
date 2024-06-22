import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/presentation/business_logic/cubit/products_cubit.dart';

class GetRecommenededForYouUseCase {
  final ProductsCubit productsCubit;

  GetRecommenededForYouUseCase(this.productsCubit);

  Future<List<ProductEntity>> execute() async {
    final products = await productsCubit.getRecommenededForYou();
    return products
        .map((product) => ProductEntity.fromProduct(product))
        .toList();
  }
}
