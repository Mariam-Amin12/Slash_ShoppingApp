import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/data/models/category_model.dart';

class CategoryEntity {
  final String title;
  final FaIcon icon;
  final Function() ontap;

  CategoryEntity({required this.ontap, required this.title, required this.icon});

  factory CategoryEntity.fromModel(CategoryModel model) {
    return CategoryEntity(
      title: model.title,
      icon: model.icon,
      ontap: model.ontap,
    );
  }
}
