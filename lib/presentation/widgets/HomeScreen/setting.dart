import 'package:flutter/material.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/data/constants/icons/icons.dart';


class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16),
      child: Material(
        color:HomeColors().searchBar,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
              height: 47,
              width: 45,
              alignment: Alignment.center,
              child: ConstIcons().setting),
        ),
      ),
    );
  }
}
