import 'package:flutter/material.dart';
import 'package:shopping/data/constants/styles/style.dart';
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/presentation/view_models/home_view_model.dart';
import 'package:shopping/presentation/widgets/HomeScreen/card.dart';
import 'package:shopping/presentation/widgets/HomeScreen/scroll.dart';

class Products extends StatefulWidget {
  const Products({
    super.key,
    required this.homeViewModel,
    required this.title,
  });
  final String title;

  final HomeViewModel homeViewModel;

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          children: [
            Text(
              widget.title,
              style: Style().titleSmall,
            ),
            Expanded(child: Container()),
            InkWell(
              child: Text("See all", style: Style().bodyLarge),
              onTap: () {},
            ),
            Scroll(
              onTap: () {
                _controller.animateTo(
                  _controller.offset +
                      100, // Adjust the scroll distance as needed
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),

        FutureBuilder<List<ProductEntity>>(
          future: widget.homeViewModel.getProducts(widget.title),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final Products = snapshot.data ?? [];
              return SizedBox(

                height: 240,
                child: ListView.builder(

                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Products.length,
                  itemBuilder: (_, index) {
                    final product = Products[index];
                    return Cards(
                      homeViewModel: widget.homeViewModel,
                     product:product
                    );
                  },
                ),
              );
            }
          },
        ),
      ]),
    );
  }
}
