import 'package:flutter/material.dart';

class FileItemModel {
  final String? img;
  final String title;
  final String type;
  final String subtitle;
  final String? subTitleIcon;
  final String? subTitleIcon2;
  final GlobalKey itemKey;

  FileItemModel(
      {this.img,
      required this.type,
      required this.title,
      required this.subtitle,
      this.subTitleIcon,
      this.subTitleIcon2,
      required this.itemKey});
}
