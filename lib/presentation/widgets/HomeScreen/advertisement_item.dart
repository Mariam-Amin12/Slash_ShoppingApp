


import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(

              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image,fit: BoxFit.fill,)),
        ),
      ),
    );
  }
}
