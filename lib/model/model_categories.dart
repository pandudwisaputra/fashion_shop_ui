import 'package:fashion_shop/common/shop_color.dart';
import 'package:flutter/material.dart';

class ModelCategories {
  String name;
  String imageAsset;
  Color color;

  ModelCategories(
      {required this.name, required this.imageAsset, required this.color});
}

List categoriesList = [
  ModelCategories(
      name: 'Men\nStyle',
      imageAsset: 'assets/png/men_categories.png',
      color: ShopColor.color3),
  ModelCategories(
      name: 'Women\nStyle',
      imageAsset: 'assets/png/women_categories.png',
      color: ShopColor.color2),
  ModelCategories(
      name: 'Kids\nStyle',
      imageAsset: 'assets/png/kids_categories.png',
      color: ShopColor.color3),
  ModelCategories(
      name: 'Baby\nStyle',
      imageAsset: 'assets/png/baby_categories.png',
      color: ShopColor.color2),
];
