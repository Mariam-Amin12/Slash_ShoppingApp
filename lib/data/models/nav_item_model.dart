// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavItemModel {
  final String title;
  final Icon iconOutlined;
  final Icon iconFilled;
  final int id;
  NavItemModel({
    required this.id,
    required this.iconOutlined,
    required this.iconFilled,
    required this.title,
  });
}
