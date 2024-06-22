import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      required this.hight,
      required this.width,
      required this.radius,
      this.child, this.padding});
  final double hight;
  final double width;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: hight,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
      child: child,

    );
  }
}
