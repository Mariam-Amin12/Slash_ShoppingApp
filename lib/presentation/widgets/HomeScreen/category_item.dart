
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/data/constants/colors/home_colors.dart';
import 'package:shopping/data/constants/styles/style.dart';

class CategorieItem extends StatelessWidget {
  const CategorieItem({
    super.key,
    required this.ontap,
    required this.icon,
    required this.title,
  });

  final void Function()? ontap;
  final FaIcon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          //cuirclar icons
          GestureDetector(
            onTap: ontap,
            child: Container(
              width: 72,
              height: 72,
              // padding: EdgeInsets.all(21),
              decoration: BoxDecoration(
                color: HomeColors().darkGray,
                borderRadius: BorderRadius.circular(120),
              ),
              child: Center(child: icon),


            ),
          ),
          //space
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Style().bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
