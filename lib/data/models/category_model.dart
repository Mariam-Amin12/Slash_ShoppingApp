import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryModel {
  final String title;
  final FaIcon icon;
  final Function() ontap;
  CategoryModel({required this.icon, required this.title,required this.ontap});
}
