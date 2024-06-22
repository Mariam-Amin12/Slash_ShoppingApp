import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key? key,
    required this.height,
    required this.width,
    required this.radius,
    required this.padding,
    required this.image,
    required this.fit,
    required this.onTap,
  }) : super(key: key);

  final double height;
  final double width;
  final double radius;

  final EdgeInsetsGeometry? padding;
  final String image;
  final BoxFit? fit;
  final Function() onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.asset(
            image,
            fit:BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
