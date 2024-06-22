import 'package:flutter/material.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/data/constants/icons/icons.dart';
import 'package:shopping/data/constants/sizes/size.dart';
import 'package:shopping/data/constants/styles/style.dart';
import 'package:shopping/domain/entities/product_entity.dart';
import 'package:shopping/presentation/widgets/HomeScreen/search_delegate.dart';

class Search extends StatelessWidget {
  const Search({super.key, required this.productList});
  final Future<List<ProductEntity>> productList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0),
      child: InkWell(
        onTap: () {
          showSearch(
                                  context: context,
                                  delegate: CustomSearchDelegate(productList)
                                  );
        },
        child: Container(
          width: Sizes().getCurrentWidth(context) * 9 / 12,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: HomeColors().searchBar,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              IconButton(onPressed: () {
                showSearch(
                                  context: context,
                                  delegate: CustomSearchDelegate(productList));
              }, icon: ConstIcons().searchBar),
              SizedBox(
                width:Sizes().getCurrentWidth(context)*1/100,
              ),
              Text(
                "Search here ..",
                style: Style().bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
