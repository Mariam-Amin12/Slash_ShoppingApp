import 'package:flutter/material.dart';

import 'package:shopping/presentation/view_models/home_view_model.dart';
import 'package:shopping/presentation/widgets/HomeScreen/advertisement_container.dart';

import 'package:shopping/presentation/widgets/HomeScreen/categories_container.dart';
import 'package:shopping/presentation/widgets/HomeScreen/fav_icon.dart';
import 'package:shopping/presentation/widgets/HomeScreen/products.dart';
import 'package:shopping/presentation/widgets/HomeScreen/rounded_image.dart';

import 'package:shopping/presentation/widgets/HomeScreen/search.dart';
import 'package:shopping/presentation/widgets/HomeScreen/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeViewModel homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Search(productList: homeViewModel.getAllproducts())),
            const Setting(),
          ],
        ),
        AdvertisementContainer(homeViewModel: homeViewModel),

        CategoriesContainer(
          homeViewModel: homeViewModel,
        ),

        Products(
          title: "Best Selling",
          homeViewModel: homeViewModel,
        ),
        Products(title: "New Arrival",homeViewModel: homeViewModel,),
        Products(title: "Recommeneded For You",homeViewModel: homeViewModel,),
      ],
    );
  }
}
