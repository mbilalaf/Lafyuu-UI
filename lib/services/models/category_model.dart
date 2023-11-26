import 'package:flutter/material.dart';

class Categories {
  final String img;
  final String name;

  Categories(
    this.img,
    this.name,
  );
}

class ItemSize {
  final String sizee;

  ItemSize({
    required this.sizee,
  });
}

class SelectColor {
  final Color color;

  SelectColor({
    required this.color,
  });
}

class PaymentModel {
  final String image;
  final String name;
  final Color? color;

  PaymentModel({
    required this.image,
    required this.name,
    this.color,
  });
}

class GenderModel {
  final String gender;

  GenderModel({
    required this.gender,
  });
}
