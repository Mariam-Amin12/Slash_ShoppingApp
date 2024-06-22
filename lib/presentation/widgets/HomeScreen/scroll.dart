import 'package:flutter/material.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/data/constants/icons/icons.dart';


class Scroll extends StatelessWidget {
  const Scroll({super.key,required this.onTap});
 final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Material(
        color:HomeColors().searchBar,
        borderRadius: BorderRadius.circular(4),
        child: InkWell(
          onTap:onTap,
          borderRadius: BorderRadius.circular(4),
          child: Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              child: ConstIcons().right),
        ),
      ),
    );
  }
}
