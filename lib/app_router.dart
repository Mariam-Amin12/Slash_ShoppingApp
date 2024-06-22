
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shopping/app.dart';
// import 'package:shopping/data/constants/strings/urls.dart';
// import 'package:shopping/data/repositories/products/product_dummy.dart';
// import 'package:shopping/presentation/cubit/products_cubit.dart';

// class AppRouter {
//   Route? generateRoute(RouteSettings setting) {
//     // late ProductsRepository productsRepository;
//     // late ProductsCubit productsCubit;
//     // AppRouter() {
//     //   productsRepository = ProductsDummy();
//     //   productsCubit = ProductsCubit(productsRepository);
//     // }

//     switch (setting.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) => BlocProvider(
//           create: (context) =>ProductsCubit(ProductsDummy(Urls())),
//           child:const App(),
//         ));
//       default:
//         return MaterialPageRoute(builder: (_) => App());
//     }
//   }
// }





