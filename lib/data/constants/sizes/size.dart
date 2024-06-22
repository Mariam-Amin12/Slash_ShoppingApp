import 'package:flutter/material.dart';

class Sizes {
  double getCurrentWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getCurrentHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
