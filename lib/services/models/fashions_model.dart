import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';

class FashionModel {
  final String image;
  final String name;

  FashionModel({
    required this.image,
    required this.name,
  });
}

class CategoryListModel {
  final String image;
  final String name;
  final Color? color;

  CategoryListModel({
    required this.image,
    required this.name,
    this.color = MyColors.netralDark,
  });
}

class ShortByModel {
  final String text;
  final Color? color;

  ShortByModel({
    required this.text,
    this.color = MyColors.netralDark,
  });
}
