
import 'package:flutter/material.dart';
import 'package:shopping/data/constants/styles/style.dart';

import 'package:shopping/presentation/view_models/home_view_model.dart';
import 'package:shopping/presentation/widgets/HomeScreen/category_item.dart';

import 'package:shopping/presentation/widgets/HomeScreen/scroll.dart';

class CategoriesContainer extends StatefulWidget {
  const CategoriesContainer({
    super.key,
    required this.homeViewModel,
  });

  final HomeViewModel homeViewModel;

  @override
  State<CategoriesContainer> createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  var _controller ;

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
              "Categories",
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
                    _controller.offset + 100, // Adjust the scroll distance as needed
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
            ),
          ],
        ),
      SizedBox(height: 16,),
        SizedBox(
          height: 120,
          child: ListView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: widget.homeViewModel.categories.length,
            itemBuilder: (_, index) {
              final category = widget.homeViewModel.categories[index];
              return CategorieItem(
                  ontap: category.ontap,
                  icon: category.icon,
                  title: category.title);
            },
          ),
        ),
      ]),
    );
  }
}
