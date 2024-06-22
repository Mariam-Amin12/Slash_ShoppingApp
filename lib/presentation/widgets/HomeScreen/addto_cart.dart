import 'package:flutter/material.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/data/constants/icons/icons.dart';
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/presentation/view_models/home_view_model.dart';

class AddToMyCart extends StatefulWidget {
  const AddToMyCart(
      {super.key, required this.product, required this.homeViewModel});
  final ProductEntity product;
  final HomeViewModel homeViewModel;

  @override
  State<AddToMyCart> createState() => _AddToMyCartState();
}

class _AddToMyCartState extends State<AddToMyCart> {
  var _added = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 33,
        height: 33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: HomeColors().darkGray),
        child: IconButton(
            icon: _added ? ConstIcons().added : ConstIcons().add,
            onPressed: () {
              setState(() {});
              _added = !_added;

              widget.homeViewModel.addToCart(widget.product);
            }),
      ),
    );
  }
}
