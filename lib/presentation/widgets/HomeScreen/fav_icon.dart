import 'package:flutter/material.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/data/constants/icons/icons.dart';
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/presentation/view_models/home_view_model.dart';

class FavIcon extends StatefulWidget {
  const FavIcon({
    super.key,
    required this.product,
    required this.homeViewModel,
  });
  final ProductEntity product;
  final HomeViewModel homeViewModel;

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  var _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 29,
          height: 29,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: HomeColors().offWhite),
          child: IconButton(
            icon: _isFavorited
                ? ConstIcons().filledFavorite
                : ConstIcons().outlineFavorite,
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
              });
               if (_isFavorited) {
                HomeViewModel().addToFavorites(widget.product);
              } else {
                HomeViewModel().removeFromFavorites(widget.product);
              }

            },
          ),
        ),
      ),
    );
  }
}
