import 'package:flutter/material.dart';

class MenuItemModel {
  final String text;
  final String icon;
  final VoidCallback onTap;
  const MenuItemModel({
    required this.text,
    required this.icon,
    required this.onTap
  });
}