import 'package:flutter/material.dart';
import 'package:shopping/data/constants/styles/style.dart';
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/presentation/view_models/home_view_model.dart';
import 'package:shopping/presentation/widgets/HomeScreen/addto_cart.dart';
import 'package:shopping/presentation/widgets/HomeScreen/fav_icon.dart';
import 'package:shopping/presentation/widgets/HomeScreen/rounded_container.dart';
import 'package:shopping/presentation/widgets/HomeScreen/rounded_image.dart';

class Cards extends StatefulWidget {
  const Cards({super.key, required this.product, required this.homeViewModel});

  final ProductEntity product;
  final HomeViewModel homeViewModel;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoundedContainer(
            hight: 150,
            width: 170,
            padding: EdgeInsets.only(top: 10),
            radius: 8,
            child: Stack(children: [
              RoundedImage(
                fit: BoxFit.cover,
                padding: EdgeInsets.all(2),
                onTap: () {},
                height: 150,
                width: 170,
                radius: 8,
                image: widget.product.image!,
              ),
              FavIcon(
                homeViewModel: widget.homeViewModel,
                product: widget.product,
              )
            ]),
          ),
          Text(
            widget.product.name!,
            style: Style().bodyMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "EGP " + widget.product.price.toString(),
                style: Style().titleMedium,
              ),
              SizedBox(width: 50,),
              AddToMyCart(homeViewModel: widget.homeViewModel,
              product: widget.product,),
            ],
          )
        ],
      ),
    );
  }
}
